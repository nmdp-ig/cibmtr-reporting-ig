# RxNorm - Ursodiol - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Ursodiol**

## ValueSet: RxNorm - Ursodiol (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-ursodiol-vs | *Version*:0.1.11 |
| Draft as of 2026-06-22 | *Computable Name*:RxNormUrsodiolVS |

 
RxNorm codes for Ursodiol 

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
  "id" : "med-ursodiol-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-ursodiol-vs",
  "version" : "0.1.11",
  "name" : "RxNormUrsodiolVS",
  "title" : "RxNorm - Ursodiol",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T09:21:59-05:00",
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
  "description" : "RxNorm codes for Ursodiol",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "215007",
            "display" : "Actigall"
          },
          {
            "code" : "220706",
            "display" : "Urso"
          },
          {
            "code" : "11065",
            "display" : "ursodiol"
          },
          {
            "code" : "62427",
            "display" : "ursodeoxycholate"
          },
          {
            "code" : "151610",
            "display" : "Destolit"
          },
          {
            "code" : "2477891",
            "display" : "Reltone"
          },
          {
            "code" : "153695",
            "display" : "Urdox"
          },
          {
            "code" : "544268",
            "display" : "Urso Forte"
          },
          {
            "code" : "152480",
            "display" : "Ursofalk"
          },
          {
            "code" : "153628",
            "display" : "Ursogal"
          },
          {
            "code" : "1169904",
            "display" : "Actigall Oral Product"
          },
          {
            "code" : "1169905",
            "display" : "Actigall Pill"
          },
          {
            "code" : "1186788",
            "display" : "Urso Oral Product"
          },
          {
            "code" : "1186789",
            "display" : "Urso Pill"
          },
          {
            "code" : "632296",
            "display" : "ursodeoxycholate Oral Capsule [Actigall]"
          },
          {
            "code" : "632450",
            "display" : "ursodeoxycholate Oral Capsule [Urso]"
          },
          {
            "code" : "632416",
            "display" : "ursodeoxycholate Oral Tablet [Urso]"
          },
          {
            "code" : "858745",
            "display" : "ursodiol 250 MG [Urso]"
          },
          {
            "code" : "858746",
            "display" : "ursodiol 250 MG Oral Capsule [Urso]"
          },
          {
            "code" : "858752",
            "display" : "ursodiol 250 MG Oral Tablet [Urso]"
          },
          {
            "code" : "858748",
            "display" : "ursodiol 300 MG [Actigall]"
          },
          {
            "code" : "858749",
            "display" : "ursodiol 300 MG Oral Capsule [Actigall]"
          },
          {
            "code" : "384895",
            "display" : "ursodiol 100 MG"
          },
          {
            "code" : "360514",
            "display" : "ursodiol 125 MG"
          },
          {
            "code" : "858330",
            "display" : "ursodiol 150 MG"
          },
          {
            "code" : "452499",
            "display" : "ursodiol 200 MG"
          },
          {
            "code" : "360513",
            "display" : "ursodiol 250 MG"
          },
          {
            "code" : "858328",
            "display" : "ursodiol 300 MG"
          },
          {
            "code" : "452500",
            "display" : "ursodiol 400 MG"
          },
          {
            "code" : "452502",
            "display" : "ursodiol 50 MG"
          },
          {
            "code" : "858332",
            "display" : "ursodiol 50 MG/ML"
          },
          {
            "code" : "858732",
            "display" : "ursodiol 500 MG"
          }
        ]
      }
    ]
  }
}

```
