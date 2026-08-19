# RxNorm - Melphalan - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Melphalan**

## ValueSet: RxNorm - Melphalan (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-melphalan-vs | *Version*:0.1.11 |
| Draft as of 2026-08-19 | *Computable Name*:RxNormMelphalanVS |

 
RxNorm codes for Melphalan 

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
  "id" : "med-melphalan-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-melphalan-vs",
  "version" : "0.1.11",
  "name" : "RxNormMelphalanVS",
  "title" : "RxNorm - Melphalan",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-19T10:07:56-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and NMDP",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.cibmtr.org"
        }
      ]
    },
    {
      "name" : "Bob Milius",
      "telecom" : [
        {
          "system" : "email",
          "value" : "bmilius@nmdp.org"
        }
      ]
    }
  ],
  "description" : "RxNorm codes for Melphalan",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "6718",
            "display" : "melphalan"
          },
          {
            "code" : "151325",
            "display" : "Alkeran"
          },
          {
            "code" : "1745086",
            "display" : "Evomela"
          },
          {
            "code" : "317646",
            "display" : "melphalan 2 MG"
          },
          {
            "code" : "332190",
            "display" : "melphalan 5 MG"
          },
          {
            "code" : "1740948",
            "display" : "melphalan 50 MG"
          },
          {
            "code" : "446276",
            "display" : "melphalan Extended Release Oral Tablet"
          },
          {
            "code" : "1159787",
            "display" : "melphalan Injectable Product"
          },
          {
            "code" : "1740949",
            "display" : "melphalan Injection"
          },
          {
            "code" : "1159788",
            "display" : "melphalan Oral Product"
          },
          {
            "code" : "372756",
            "display" : "melphalan Oral Tablet"
          },
          {
            "code" : "1159789",
            "display" : "melphalan Pill"
          }
        ]
      }
    ]
  }
}

```
