# CIBMTR Reporting Implementation Guide

## Prerequisties
* FHIR IG Publisher
  * current version: https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
  * documentation: https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation
* Sushi
  * Installation - https://fshschool.org/docs/sushi/installation/
  * Learn how to use FSH - https://fshschool.org/
* Local copies of
    * https://github.com/FHIR/ig-registry
    * https://github.com/HL7/fhir-ig-history-template

The instructions below assume `publisher`, `fhir-ig-template-base`, and `ig-registry` are found in the parent directory.

## Building the IG

* Clone this repo
```
git clone https://github.com/nmdp-ig/cibmtr-reporting-ig
cd cibmtr-reporting-ig/build
```
* Edit version of the IG in `sushi-config.yaml` as needed (line 20), e.g.,
```
...etc...
version: 0.1.2
...etc...
```
* Run the publisher
```
java -jar ../publisher.jar -ig ig.ini
```
* Check `output/qa.html` for errors, warnings. If no errors, proceed to publishing

## Publishing
* Prepare contents for publishing for the milestone
```
java -jar ../publisher.jar -no-sushi -ig ig.ini -publish http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.2
```
* Copy the history template files to `website/`
```
$ cp -r ../fhir-ig-history-template/*hist* website/
```
* Edit website/history.html if necessary to change http to https for two js scripts. Change:
```
  <script type="application/javascript" src="http://hl7.org/fhir/history-cm.js"> </script>
  <script type="application/javascript" src="http://hl7.org/fhir/history.js"> </script>
```
to
```
  <script type="application/javascript" src="https://hl7.org/fhir/history-cm.js"> </script>
  <script type="application/javascript" src="https://hl7.org/fhir/history.js"> </script>
```
* Make sure `website/publish.ini` has been created, e.g.,
```
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

* Modify `website/package-list.json` as needed for new milestone, e.g.,
```
{
    "package-id": "cibmtr-reporting",
    "title": "CIMBTRReporting",
    "canonical": "http://fhir.nmdp.org/ig/cibmtr-reporting",
    "introduction": "This is the CIBMTR Reporting Implementation Guide",
    "category": "Research",
    "list": [   
        {
            "version": "current",
            "desc": "Continuous Integration Build (latest in version control)",
            "path": "http://build.fhir.nmdp.org/ig/cibmtr-reporting",
            "status": "ci-build",
            "current": true
        },
        {
            "version": "0.1.0",
            "date": "2020-09-01",
            "desc": "CIBMTR Reporting IG",
            "path": "http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.0",
            "status": "trial-use",
            "fhirversion": "4.0.1", 
            "sequence": "Trial Use 1"
        },
        {
            "version": "0.1.1",
            "date": "2020-11-01",
            "desc": "CIBMTR Reporting IG",
            "path": "http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.1",
            "status": "trial-use",
            "fhirversion": "4.0.1", 
            "sequence": "Trial Use 1"
        },
        {
            "version": "0.1.2",
            "date": "2021-03-01",
            "desc": "CIBMTR Reporting IG",
            "path": "http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.2",
            "status": "trial-use",
            "fhirversion": "4.0.1", 
            "sequence": "Trial Use 1",
            "current": true
        }
    ]
}
```


* Copy contents of `output/` to a directory that contains the published IG
```
cp -r output/* website/
```
* If you're creating a new milestone, create it in the `website` folder, e.g.,
```
mkdir website/0.1.2
cp -r output/*  website/0.1.2
```
* Update the `website` contents. This creates the history pages and the PHP redirect scripts
```
java -jar ../publisher.jar -publish-update -folder website -registry ../ig-registry/fhir-ig-list.json
```
* Test contents of `website` directory for proper PHP redirects and history files.
