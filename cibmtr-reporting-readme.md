# CIBMTR Reporting Implementation Guide


## Prerequisties
* FHIR IG Publisher
  * current version: https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
  * documentation: https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation
* Sushi
  * Installation - https://fshschool.org/docs/sushi/installation/
  * Learn how to use FHS - https://fshschool.org/
* l=Local copies of
    * https://github.com/HL7/ig-template-base
    * https://github.com/FHIR/ig-registry

The instructions below assume `publisher``, `ig-template-base``, and `ig-registry` are found in the parent directory.

## Building the IG
```
# Clone this repo
git clone https://github.com/nmdp-ig/cibmtr-reporting-ig
cd cibmtr-reporting-ig/build
# edit version of the IG in sushi-config.yaml as needed (line 20)
java -jar ../publisher.jar -ig ig.ini
# if no errors, proceed to publishing
```
## Publishing
```
java -jar ../publisher.jar -no-sushi -ig ig.ini -publish http://fhir.nmdp.org/ig/cibmtr-reporting
cp -r output/* website
# if you're creating a new milestone, create it in the website folder, e.g.,
mkdir website/2021-03
cp -r output/ website/2021-03
# modify website/publish.ini if needed, e.g.,
[website]
style=fhir.layout
server=apache
url=http://fhir.nmdp.org/ig/cibmtr-reporting
org=NMDP
no-registry=1

[feeds]
package=package-feed.xml
publication=publication-feed.xml

# modify website/package-list.json as needed for new milestone, e.g.,
{
  "package-id": "cibmtr-reporting",
  "title": "CIBMTR Reporting Implementation Guide",
  "canonical": "http://fhir.nmdp.org/ig/cibmtr-reporting",
  "introduction": "CIBMTR Reporting Implementation Guide based on US-Core",
  "list": [
    {
        "version":      "0.1.2",
        "date":         "2021-03-01",
        "desc":         "Draft",
        "path":         "http://fhir.nmdp.org/ig/cibmtr-reporting",
        "status":       "trial-use",
        "sequence":     "Trial Use: 1",
        "fhirversion":  "4.0.1",
        "current": true
    },
    {
        "version":      "0.1.0",
        "date":         "2020-09-01",
        "desc":         "Draft",
        "path":         "http://fhir.nmdp.org/ig/cibmtr-reporting/2020-09",
        "status":       "trial-use",
        "sequence":     "Trial Use: 1",
        "fhirversion":  "4.0.1"
    },
    {
        "version":      "0.1.1",
        "date":         "2020-11-01",
        "desc":         "Draft",
        "path":         "http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11",
        "status":       "trial-use",
        "sequence":     "Trial Use: 1",
        "fhirversion":  "4.0.1"
    },
    {
        "version":      "0.1.2",
        "date":         "2021-03-01",
        "desc":         "Draft",
        "path":         "http://fhir.nmdp.org/ig/cibmtr-reporting/2021-03",
        "status":       "trial-use",
        "sequence":     "Trial Use: 1",
        "fhirversion":  "4.0.1",
        "current":      "true"
    }
  ],
  "category": "Research"
}

# copy the history files to website/
$ cp -r ../fhir-ig-history-template/*hist* website/
# update the website contents. This creates the history pages and the php redirects
java -jar ../publisher.jar -publish-update -registry ../ig-registry/fhir-ig-list.json
# test contents of website directory for propler php redirects and history files.
```
