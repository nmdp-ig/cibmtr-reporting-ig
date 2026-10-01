# RxNorm - Fludarabine - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Fludarabine**

## ValueSet: RxNorm - Fludarabine (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-fludarabine-vs | *Version*:0.1.11 |
| Draft as of 2026-06-25 | *Computable Name*:RxNormFludarabineVS |

 
RxNorm codes for Fludarabine 

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
  "id" : "med-fludarabine-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-fludarabine-vs",
  "version" : "0.1.11",
  "name" : "RxNormFludarabineVS",
  "title" : "RxNorm - Fludarabine",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-25T19:24:07-05:00",
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
  "description" : "RxNorm codes for Fludarabine",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "24698",
            "display" : "fludarabine"
          },
          {
            "code" : "877487",
            "display" : "Oforta"
          },
          {
            "code" : "1165043",
            "display" : "fludarabine Injectable Product"
          },
          {
            "code" : "1740863",
            "display" : "fludarabine Injection"
          },
          {
            "code" : "828708",
            "display" : "fludarabine Oral Capsule"
          },
          {
            "code" : "1165044",
            "display" : "fludarabine Oral Product"
          },
          {
            "code" : "393413",
            "display" : "fludarabine Oral Tablet"
          },
          {
            "code" : "828705",
            "display" : "fludarabine phosphate 10 MG"
          },
          {
            "code" : "328431",
            "display" : "fludarabine phosphate 25 MG/ML"
          },
          {
            "code" : "1740862",
            "display" : "fludarabine phosphate 50 MG"
          },
          {
            "code" : "1165045",
            "display" : "fludarabine Pill"
          }
        ]
      }
    ]
  }
}

```
