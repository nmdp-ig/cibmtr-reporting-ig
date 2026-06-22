# RxNorm - Carmustine - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Carmustine**

## ValueSet: RxNorm - Carmustine (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-carmustine-vs | *Version*:0.1.11 |
| Draft as of 2026-06-22 | *Computable Name*:RxNormCarmustineVS |

 
RxNorm codes for Carmustine 

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
  "id" : "med-carmustine-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-carmustine-vs",
  "version" : "0.1.11",
  "name" : "RxNormCarmustineVS",
  "title" : "RxNorm - Carmustine",
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
  "description" : "RxNorm codes for Carmustine",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "2105",
            "display" : "carmustine"
          },
          {
            "code" : "343027",
            "display" : "BiCNU"
          },
          {
            "code" : "217357",
            "display" : "Gliadel"
          },
          {
            "code" : "1173621",
            "display" : "BiCNU Injectable Product"
          },
          {
            "code" : "1729367",
            "display" : "carmustine 100 MG"
          },
          {
            "code" : "1729370",
            "display" : "carmustine 100 MG [BiCNU]"
          },
          {
            "code" : "105552",
            "display" : "carmustine 100 MG Injection [BiCNU]"
          },
          {
            "code" : "337509",
            "display" : "carmustine 3.3 MG/ML"
          },
          {
            "code" : "564079",
            "display" : "carmustine 3.3 MG/ML [BiCNU]"
          },
          {
            "code" : "596881",
            "display" : "carmustine 3.3 MG/ML Injectable Solution [BiCNU]"
          },
          {
            "code" : "340520",
            "display" : "carmustine 7.7 MG"
          },
          {
            "code" : "378774",
            "display" : "carmustine Drug Implant"
          },
          {
            "code" : "1151413",
            "display" : "carmustine Drug Implant Product"
          },
          {
            "code" : "1151727",
            "display" : "carmustine Injectable Product"
          },
          {
            "code" : "370496",
            "display" : "carmustine Injectable Solution"
          },
          {
            "code" : "491188",
            "display" : "carmustine Injectable Solution [BiCNU]"
          },
          {
            "code" : "1729368",
            "display" : "carmustine Injection"
          },
          {
            "code" : "1729371",
            "display" : "carmustine Injection [BiCNU]"
          }
        ]
      }
    ]
  }
}

```
