# RxNorm - Thiotepa - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Thiotepa**

## ValueSet: RxNorm - Thiotepa (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-thiotepa-vs | *Version*:0.1.11 |
| Draft as of 2026-08-18 | *Computable Name*:RxNormThiotepaVS |

 
RxNorm codes for Thiotepa 

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
  "id" : "med-thiotepa-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-thiotepa-vs",
  "version" : "0.1.11",
  "name" : "RxNormThiotepaVS",
  "title" : "RxNorm - Thiotepa",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-18T15:36:33-05:00",
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
  "description" : "RxNorm codes for Thiotepa",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "1366537",
            "display" : "Tepadina"
          },
          {
            "code" : "224924",
            "display" : "Thioplex"
          },
          {
            "code" : "10473",
            "display" : "thiotepa"
          },
          {
            "code" : "1919208",
            "display" : "Tepadina Injectable Product"
          },
          {
            "code" : "1177866",
            "display" : "Thioplex Injectable Product"
          },
          {
            "code" : "340261",
            "display" : "thiotepa 10.4 MG/ML"
          },
          {
            "code" : "575228",
            "display" : "thiotepa 10.4 MG/ML [Thioplex]"
          },
          {
            "code" : "318248",
            "display" : "thiotepa 10.4 MG/ML Injectable Solution [Thioplex]"
          },
          {
            "code" : "1660002",
            "display" : "thiotepa 100 MG"
          },
          {
            "code" : "1919206",
            "display" : "thiotepa 100 MG [Tepadina]"
          },
          {
            "code" : "1919209",
            "display" : "thiotepa 100 MG Injection [Tepadina]"
          },
          {
            "code" : "1660008",
            "display" : "thiotepa 15 MG"
          },
          {
            "code" : "1919210",
            "display" : "thiotepa 15 MG [Tepadina]"
          },
          {
            "code" : "1919211",
            "display" : "thiotepa 15 MG Injection [Tepadina]"
          },
          {
            "code" : "1156487",
            "display" : "thiotepa Injectable Product"
          },
          {
            "code" : "375319",
            "display" : "thiotepa Injectable Solution"
          },
          {
            "code" : "363194",
            "display" : "thiotepa Injectable Solution [Thioplex]"
          },
          {
            "code" : "1660003",
            "display" : "thiotepa Injection"
          },
          {
            "code" : "1919207",
            "display" : "thiotepa Injection [Tepadina]"
          }
        ]
      }
    ]
  }
}

```
