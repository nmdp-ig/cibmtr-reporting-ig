# RxNorm - Etoposide - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Etoposide**

## ValueSet: RxNorm - Etoposide (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-etoposide-vs | *Version*:0.1.11 |
| Draft as of 2026-08-19 | *Computable Name*:RxNormEtoposideVS |

 
RxNorm codes for Etoposide 

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
  "id" : "med-etoposide-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-etoposide-vs",
  "version" : "0.1.11",
  "name" : "RxNormEtoposideVS",
  "title" : "RxNorm - Etoposide",
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
  "description" : "RxNorm codes for Etoposide",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "4179",
            "display" : "etoposide"
          },
          {
            "code" : "220347",
            "display" : "Toposar"
          },
          {
            "code" : "203058",
            "display" : "Vepesid"
          },
          {
            "code" : "274342",
            "display" : "Etopophos"
          },
          {
            "code" : "451835",
            "display" : "etoposide 10 MG/ML"
          },
          {
            "code" : "329753",
            "display" : "etoposide 100 MG"
          },
          {
            "code" : "564108",
            "display" : "etoposide 100 MG [Vepesid]"
          },
          {
            "code" : "105593",
            "display" : "etoposide 100 MG Oral Capsule [Vepesid]"
          },
          {
            "code" : "315912",
            "display" : "etoposide 20 MG/ML"
          },
          {
            "code" : "567639",
            "display" : "etoposide 20 MG/ML [Toposar]"
          },
          {
            "code" : "567640",
            "display" : "etoposide 20 MG/ML [Vepesid]"
          },
          {
            "code" : "206831",
            "display" : "etoposide 20 MG/ML Injectable Solution [Toposar]"
          },
          {
            "code" : "206832",
            "display" : "etoposide 20 MG/ML Injectable Solution [Vepesid]"
          },
          {
            "code" : "315913",
            "display" : "etoposide 50 MG"
          },
          {
            "code" : "564107",
            "display" : "etoposide 50 MG [Vepesid]"
          },
          {
            "code" : "105592",
            "display" : "etoposide 50 MG Oral Capsule [Vepesid]"
          },
          {
            "code" : "1157928",
            "display" : "etoposide Injectable Product"
          },
          {
            "code" : "376890",
            "display" : "etoposide Injectable Solution"
          },
          {
            "code" : "362881",
            "display" : "etoposide Injectable Solution [Toposar]"
          },
          {
            "code" : "362972",
            "display" : "etoposide Injectable Solution [Vepesid]"
          },
          {
            "code" : "1734339",
            "display" : "etoposide Injection"
          },
          {
            "code" : "372132",
            "display" : "etoposide Oral Capsule"
          },
          {
            "code" : "366233",
            "display" : "etoposide Oral Capsule [Vepesid]"
          },
          {
            "code" : "1157929",
            "display" : "etoposide Oral Product"
          },
          {
            "code" : "1157930",
            "display" : "etoposide Pill"
          },
          {
            "code" : "1178005",
            "display" : "Toposar Injectable Product"
          },
          {
            "code" : "1187877",
            "display" : "Vepesid Injectable Product"
          },
          {
            "code" : "1187878",
            "display" : "Vepesid Oral Product"
          },
          {
            "code" : "1187879",
            "display" : "Vepesid Pill"
          }
        ]
      }
    ]
  }
}

```
