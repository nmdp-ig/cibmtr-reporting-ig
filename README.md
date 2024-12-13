# CIBMTR Reporting Implementation Guide

## Prerequisties
* Java 17
* FHIR IG Publisher
  * documentation: https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation
* Sushi
  * Installation - https://fshschool.org/docs/sushi/installation/ will most likely need to run under "sudo"
     * sudo npm install -g fsh-sushi
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

* Get the publisher
```
* Change directory to build dir.  
* Run the _updatePublisher.sh or .bat
* Run the _genOnce.sh or .bat

* Place the publish-setup.json publication/web-root/cibmtr-reporting
```
{
  "website" : {
    "style" : "fhir.layout",
    "url" : "http://fhir.nmdp.org/ig",
    "server" : "apache",
    "org" : "CIBMTR/NMDP",
    "index-template":"index.template"
},
  "layout-rules" : [{
    "npm" : "nmdp.fhir.*",
    "canonical" : "http://fhir.nmdp.org/ig/{3}",
    "destination" : "/{3}"
  }]
}

```
* Generate the package registry
```
java -jar build/input-cache/publisher.jar -generate-package-registry publication/web-root/cibmtr-reporting
```


* Update ig-history and ig-registry
  * https://github.com/FHIR/ig-registry
  * https://github.com/HL7/fhir-ig-history-template
* Place these directories in the publication path

* Verify that publication-request.json "first": false,
* Update web-root/cibmtr-reporting/package-list.json  Increment the version: and path: to next version of publication
```
    {
      "version" : "0.1.7",
      "path" : "http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7",
      "status" : "draft",
      "sequence" : "Release",
      "fhirversion" : "4.0.1",
      "date" : "2024-12-13",
      "current" : true,
      "desc" : "How to report hematopoietic cell transplantation (HCT) and other cellular therapy data to CIBMTR"
    }
  ],
```
* Run the publisher from the root of the project.  ie. /localpath/cibmtr-reporting-ig
```
java -jar ../publisher.jar -ig ig.ini
```
* Check `output/qa.html` for errors, warnings. If no errors, proceed to publishing

## Publishing the final version from root of project
```
java -jar build/input-cache/publisher.jar -go-publish -source build -web publication/web-root -registry publication/ig-registry/fhir-ig-list.json -history publication/ig-history -templates publication/web-root/history-templates -resetTxErrors
```

