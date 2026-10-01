# RxNorm - Anti-Thymocyte Globulin - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Anti-Thymocyte Globulin**

## ValueSet: RxNorm - Anti-Thymocyte Globulin (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-anti-thymocyte-globulin-vs | *Version*:0.1.12 |
| Draft as of 2026-08-27 | *Computable Name*:RxNormAntiThymocyteGlobulinVS |

 
RxNorm codes for Anti-Thymocyte Globulin 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "med-anti-thymocyte-globulin-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-anti-thymocyte-globulin-vs",
  "version" : "0.1.12",
  "name" : "RxNormAntiThymocyteGlobulinVS",
  "title" : "RxNorm - Anti-Thymocyte Globulin",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-27T20:49:22-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and NMDP",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.cibmtr.org"
    }]
  },
  {
    "name" : "Bob Milius",
    "telecom" : [{
      "system" : "email",
      "value" : "bmilius@nmdp.org"
    }]
  }],
  "description" : "RxNorm codes for Anti-Thymocyte Globulin",
  "compose" : {
    "include" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "concept" : [{
        "code" : "1204",
        "display" : "ATGAM"
      },
      {
        "code" : "1011",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin"
      },
      {
        "code" : "225741",
        "display" : "Thymoglobulin"
      },
      {
        "code" : "91601",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine"
      },
      {
        "code" : "206289",
        "display" : "5 ML lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML Injection [ATGAM]"
      },
      {
        "code" : "1165939",
        "display" : "ATGAM Injectable Product"
      },
      {
        "code" : "2282515",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injectable Product"
      },
      {
        "code" : "2282516",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection"
      },
      {
        "code" : "2282519",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection [ATGAM]"
      },
      {
        "code" : "2282528",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection [Thymoglobulin]"
      },
      {
        "code" : "2282514",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML"
      },
      {
        "code" : "2282518",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML [ATGAM]"
      },
      {
        "code" : "1870646",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML Injection [ATGAM]"
      },
      {
        "code" : "2282525",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG"
      },
      {
        "code" : "2282527",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG [Thymoglobulin]"
      },
      {
        "code" : "107050",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG Injection [Thymoglobulin]"
      },
      {
        "code" : "1177887",
        "display" : "Thymoglobulin Injectable Product"
      }]
    }]
  }
}

```
