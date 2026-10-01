# RxNorm - Bortezomib - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Bortezomib**

## ValueSet: RxNorm - Bortezomib (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-bortezomib-vs | *Version*:0.1.10 |
| Draft as of 2026-05-27 | *Computable Name*:RxNormBortezomibVS |

 
RxNorm codes for Bortezomib 

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
  "id" : "med-bortezomib-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-bortezomib-vs",
  "version" : "0.1.10",
  "name" : "RxNormBortezomibVS",
  "title" : "RxNorm - Bortezomib",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-05-27T18:39:21+00:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
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
  "description" : "RxNorm codes for Bortezomib",
  "compose" : {
    "include" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "concept" : [{
        "code" : "358258",
        "display" : "bortezomib"
      },
      {
        "code" : "356733",
        "display" : "Velcade"
      },
      {
        "code" : "1804993",
        "display" : "bortezomib 3.5 MG"
      },
      {
        "code" : "1804996",
        "display" : "bortezomib 3.5 MG [Velcade]"
      },
      {
        "code" : "402244",
        "display" : "bortezomib 3.5 MG Injection [Velcade]"
      },
      {
        "code" : "1163075",
        "display" : "bortezomib Injectable Product"
      },
      {
        "code" : "1804994",
        "display" : "bortezomib Injection"
      },
      {
        "code" : "1804997",
        "display" : "bortezomib Injection [Velcade]"
      },
      {
        "code" : "1187756",
        "display" : "Velcade Injectable Product"
      }]
    }]
  }
}

```
