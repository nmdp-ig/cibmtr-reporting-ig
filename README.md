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

## Publishing

Update FHIR IG

Clone the repository

Create new branch from main

*Run:
 * _updatePublisher.sh the publisher.jar
 * _genOnce.sh

* Download the IG History and IG Registry and extract to the cibmtr-reporting-ig/publication.  Rename the extracted directories to ig-history and ig-registry.
 * https://github.com/FHIR/ig-registry
 * https://github.com/HL7/fhir-ig-history-template

* Build/publication-request.json first to false.
* Update this file with correct version and path
```
{
    "package-id" : "nmdp.fhir.cibmtr-reporting",
    "title" : "CIBMTR Reporting Implementation Guide",
    "category" : "Research",
    "introduction" : "The [Center for International Blood &amp; Marrow Transplant Research® (CIBMTR®)] CIBMTR is a collaborative resource of data and experts supporting research in cellular therapies to improve patient outcomes. The CIBMTR facilitates critical observational and interventional research through scientific and statistical expertise, a large network of transplant centers, and a unique and extensive clinical outcomes database. This IG describes how to report these data to CIBMTR." ,
    "version" : "0.1.8",
    "desc" : "How to report hematopoietic cell transplantation (HCT) and other cellular therapy data to CIBMTR",
    "mode" : "milestone",   
    "path" : "http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8",
    "ci-build": "http://nmdp-ig.github.io/cibmtr-reporting-ig",   
    "first": false,
    "status" : "draft",
    "sequence" : "Release"
}


* Update or verify sushi-config.yaml.  Increase version number.
 * “version: 0.1.8”

* ig.ini should have line 3 
 * template = #cibmtr-template

* Update package-registry or generate. java -jar build/input-cache/publisher.jar -generate-package-registry publication/web-root

* Update build/template/versions.txt with the new ig number Example (0.1.8)
 * igVersion=0.1.8

* Run “sushi build .”  in cibmtr-reporting-ig/build dir. Check errors.

 * “java -jar  build/input-cache/publisher.jar -ig cibmtr-reporting-ig/build/ig.ini -resetTxErrors”

* Add new directory to  publication/web-root/cibmtr-reporting/0.1.8 for new version.  Example (0.1.8)
 * “java -jar build/input-cache/publisher.jar -go-publish -source build -web publication/web-root -registry publication/ig-registry/fhir-ig-list.json -history publication/ig-history -templates publication/web-root/history-templates -resetTxErrors”
