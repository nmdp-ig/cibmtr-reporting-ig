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
version: 0.1.6
...etc...
```
* Run the publisher
```
java -jar ../publisher.jar -ig ig.ini
```
* Check `output/qa.html` for errors, warnings. If no errors, proceed to publishing

## Publishing
