# CIBMTR Reporting Implementation Guide

## Prerequisties
* FHIR IG Publisher
  * current version: https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
  * documentation: https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation
* Sushi
  * Installation - https://fshschool.org/docs/sushi/installation/
  * Learn how to use FHS - https://fshschool.org/
* Local copies of
    * https://github.com/HL7/ig-template-base
    * https://github.com/FHIR/ig-registry

The instructions below assume `publisher`, `ig-template-base`, and `ig-registry` are found in the parent directory.

## Building the IG

* Clone this repo
```
git clone https://github.com/nmdp-ig/cibmtr-reporting-ig
cd cibmtr-reporting-ig/build
```
* Edit version of the IG in `sushi-config.yaml` as needed (line 20), then run the publisher
```
java -jar ../publisher.jar -ig ig.ini
```
* Check output/qa.html for errors, warnings. If no errors, proceed to publishing

## Publishing
* Preparing contents for publishing
```
java -jar ../publisher.jar -no-sushi -ig ig.ini -publish http://fhir.nmdp.org/ig/cibmtr-reporting
```
* Copy contents of output to a directory that contains the published IG
```
cp -r output/* website/
```
* If you're creating a new milestone, create it in the website folder, e.g.,
```
mkdir website/2021-03
cp -r output/*  website/2021-03/
```
* Make sure website/publish.ini has been created, e.g.,
```block
[website]
style=fhir.layout
server=apache
url=http://fhir.nmdp.org/ig/cibmtr-reporting
org=NMDP
no-registry=1

[feeds]
package=package-feed.xml
publication=publication-feed.xml
```

# Modify website/package-list.json as needed for new milestone, e.g.,
```block
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
```

* Copy the history template files to website/
```
$ cp -r ../fhir-ig-history-template/*hist* website/
```
* Update the website contents. This creates the history pages and the PHP redirect scripts
```
java -jar ../publisher.jar -publish-update -registry ../ig-registry/fhir-ig-list.json
```
* Test contents of website directory for proper PHP redirects and history files.
