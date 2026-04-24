# CIBMTR Reporting Implementation Guide

FHIR Implementation Guide for reporting hematopoietic cell transplantation (HCT) and cellular therapy data to CIBMTR.

- **Published IG**: https://fhir.nmdp.org/ig/cibmtr-reporting
- **GitHub Pages Preview**: https://nmdp-ig.github.io/cibmtr-reporting-ig/
- **HL7 CI Build**: https://build.fhir.org/ig/nmdp-ig/cibmtr-reporting-ig/

## How It Works

```
┌─────────────────────────────────────────────────────────────────────┐
│                        Developer Workflow                           │
└─────────────────────────────────────────────────────────────────────┘

  Developer edits FSH source in build/input/fsh/
       │
       ▼
  Push to feature branch ──► GitHub Actions: SUSHI + IG Publisher
       │                      (build validation only, no deploy)
       │                      ✓ QA report in build artifacts
       ▼
  Create PR to main ──► Code review
       │
       ▼
  Merge to main
       │
       ├──► GitHub Actions runs full pipeline:
       │      1. SUSHI compiles FSH → FHIR resources
       │      2. IG Publisher builds the full IG with -publish
       │      3. Publication artifacts prepared (versioned dirs, history)
       │      4. Output deployed to GitHub Pages (preview)
       │      5. Publication artifacts committed to deploy-ready branch
       │
       │    ┌──────────────────────────────────────────────────────┐
       │    │  GitHub Pages                                        │
       │    │  https://nmdp-ig.github.io/cibmtr-reporting-ig/     │
       │    │  (dev preview with QA report)                        │
       │    └──────────────────────────────────────────────────────┘
       │
       │    ┌──────────────────────────────────────────────────────┐
       │    │  deploy-ready branch                                 │
       │    │  publication/web-root/cibmtr-reporting/              │
       │    │  (formal publication output)                         │
       │    └─────────────────┬────────────────────────────────────┘
       │                      │
       │                      ▼
       │    ┌──────────────────────────────────────────────────────┐
       │    │  GitLab CI (fhir-ig Docker build)                    │
       │    │  Clones deploy-ready branch                          │
       │    │  Assembles all IGs into Apache container             │
       │    │  Deploys to fhir.nmdp.org                            │
       │    └──────────────────────────────────────────────────────┘
       │
       ▼
  https://fhir.nmdp.org/ig/cibmtr-reporting (production)
```

## Project Structure

```
cibmtr-reporting-ig/
├── .github/workflows/
│   └── ig-build-publish.yml    # Automated build + publish pipeline
├── build/                      # IG source (this is where you work)
│   ├── ig.ini                  # IG Publisher configuration
│   ├── sushi-config.yaml       # SUSHI/IG metadata, version, dependencies
│   ├── package-list.json       # Full version history (drives history page)
│   ├── publish-setup.json      # Publication layout config
│   ├── publication-request.json
│   ├── cibmtr-template/        # CIBMTR-branded IG template
│   ├── input/
│   │   ├── fsh/                # FSH source files (profiles, extensions, etc.)
│   │   ├── pagecontent/        # Narrative markdown pages
│   │   ├── images/             # Images, PDFs, downloads
│   │   └── includes/           # Shared content fragments
│   └── _genonce.sh             # Local build script
└── README.md
```

## For Developers

### Making Changes

1. Create a feature branch from `main`
2. Edit FSH files in `build/input/fsh/`
3. Push your branch — GitHub Actions will build and validate your changes
4. Check the build status and QA artifacts in the Actions tab
5. Create a PR to `main`
6. After review and merge, the pipeline deploys automatically

### What NOT to commit

Do not commit generated output (`build/output/`, `build/fsh-generated/`, `build/temp/`, etc.).
The pipeline generates all of this automatically. Only commit source files.

### Local Development

To build locally, you need Java 17+, Node.js 20+, Ruby, Jekyll, and SUSHI:

```bash
cd build
npm install -g fsh-sushi
sushi .
./_updatePublisher.sh   # downloads the IG Publisher
./_genonce.sh           # runs the full build
# Open build/output/index.html to see the IG
# Open build/output/qa.html to see the QA report
```

### Version Bumps

Update these three files when releasing a new version:
- `build/sushi-config.yaml` → `version:`
- `build/publication-request.json` → `version:` and `path:`
- `build/package-list.json` → add a new entry to the `list` array (this drives the history page)

## Pipeline Details

The GitHub Actions workflow (`.github/workflows/ig-build-publish.yml`) runs:

| Step | What it does |
|------|-------------|
| SUSHI | Compiles FSH → FHIR JSON resources |
| IG Publisher | Builds the full IG site with validation and QA |
| publish-update | Generates publication history and package registry |
| GitHub Pages | Deploys the built IG for preview |
| deploy-ready | Commits publication artifacts for the Docker build |

### Build Triggers

| Event | Build | Deploy |
|-------|-------|--------|
| Push to `main` | ✅ | ✅ Pages + deploy-ready |
| Push to `feature/*` | ✅ | ❌ (validation only) |
| Pull request to `main` | ✅ | ❌ (validation only) |
| Manual (workflow_dispatch) | ✅ | ✅ |

### Build Artifacts

Every build uploads the QA report as a downloadable artifact (retained 30 days).
Find it in the Actions tab → select the run → Artifacts section.

## Related Repositories

| Repo | Purpose |
|------|---------|
| [matchsync-ig](https://github.com/nmdp-ig/matchsync-ig) | MatchSync IG |
| [hla-reporting-ig](https://github.com/nmdp-ig/hla-reporting-ig) | HLA Reporting IG |
| [cibmtr-ig-landing](https://github.com/nmdp-ig/cibmtr-ig-landing) | Landing page for fhir.nmdp.org |
| fhir-ig (GitLab) | Docker build that assembles all IGs for fhir.nmdp.org |
