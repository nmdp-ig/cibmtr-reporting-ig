# RxNorm - Busulfan - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Busulfan**

## ValueSet: RxNorm - Busulfan (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-busulfan-vs | *Version*:0.1.10 |
| Draft as of 2026-04-23 | *Computable Name*:RxNormBusulfanVS |

 
RxNorm codes for Busulfan 

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
  "id" : "med-busulfan-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-busulfan-vs",
  "version" : "0.1.10",
  "name" : "RxNormBusulfanVS",
  "title" : "RxNorm - Busulfan",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-23T10:10:52-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
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
  "description" : "RxNorm codes for Busulfan",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "1828",
            "display" : "busulfan"
          },
          {
            "code" : "284676",
            "display" : "Busulfex"
          },
          {
            "code" : "203010",
            "display" : "Myleran"
          },
          {
            "code" : "284425",
            "display" : "10 ML busulfan 6 MG/ML Injection [Busulfex]"
          },
          {
            "code" : "332701",
            "display" : "busulfan 0.5 MG"
          },
          {
            "code" : "564077",
            "display" : "busulfan 0.5 MG [Myleran]"
          },
          {
            "code" : "105550",
            "display" : "busulfan 0.5 MG Oral Tablet [Myleran]"
          },
          {
            "code" : "317620",
            "display" : "busulfan 2 MG"
          },
          {
            "code" : "564078",
            "display" : "busulfan 2 MG [Myleran]"
          },
          {
            "code" : "105551",
            "display" : "busulfan 2 MG Oral Tablet [Myleran]"
          },
          {
            "code" : "315503",
            "display" : "busulfan 6 MG/ML"
          },
          {
            "code" : "574864",
            "display" : "busulfan 6 MG/ML [Busulfex]"
          },
          {
            "code" : "1729356",
            "display" : "busulfan 6 MG/ML Injection [Busulfex]"
          },
          {
            "code" : "1151374",
            "display" : "busulfan Injectable Product"
          },
          {
            "code" : "1729351",
            "display" : "busulfan Injection"
          },
          {
            "code" : "1729353",
            "display" : "busulfan Injection [Busulfex]"
          },
          {
            "code" : "1151375",
            "display" : "busulfan Oral Product"
          },
          {
            "code" : "371165",
            "display" : "busulfan Oral Tablet"
          },
          {
            "code" : "368542",
            "display" : "busulfan Oral Tablet [Myleran]"
          },
          {
            "code" : "1151376",
            "display" : "busulfan Pill"
          },
          {
            "code" : "1168702",
            "display" : "Busulfex Injectable Product"
          },
          {
            "code" : "1185666",
            "display" : "Myleran Oral Product"
          },
          {
            "code" : "1185667",
            "display" : "Myleran Pill"
          }
        ]
      }
    ]
  }
}

```
