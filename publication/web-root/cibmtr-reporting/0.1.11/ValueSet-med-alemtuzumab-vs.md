# RxNorm - Alemtuzumab - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Alemtuzumab**

## ValueSet: RxNorm - Alemtuzumab (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-alemtuzumab-vs | *Version*:0.1.11 |
| Draft as of 2026-06-25 | *Computable Name*:RxNormAlemtuzumabVS |

 
RxNorm codes for Alemtuzumab 

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
  "id" : "med-alemtuzumab-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-alemtuzumab-vs",
  "version" : "0.1.11",
  "name" : "RxNormAlemtuzumabVS",
  "title" : "RxNorm - Alemtuzumab",
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
  "description" : "RxNorm codes for Alemtuzumab",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "117055",
            "display" : "alemtuzumab"
          },
          {
            "code" : "284679",
            "display" : "Campath"
          },
          {
            "code" : "1594659",
            "display" : "Lemtrada"
          },
          {
            "code" : "828267",
            "display" : "1 ML alemtuzumab 30 MG/ML Injection [Campath]"
          },
          {
            "code" : "1594663",
            "display" : "1.2 ML alemtuzumab 10 MG/ML Injection [Lemtrada]"
          },
          {
            "code" : "1594657",
            "display" : "alemtuzumab 10 MG/ML"
          },
          {
            "code" : "1594660",
            "display" : "alemtuzumab 10 MG/ML [Lemtrada]"
          },
          {
            "code" : "1656640",
            "display" : "alemtuzumab 10 MG/ML Injection [Lemtrada]"
          },
          {
            "code" : "1656628",
            "display" : "alemtuzumab 30 MG/ML"
          },
          {
            "code" : "1656631",
            "display" : "alemtuzumab 30 MG/ML [Campath]"
          },
          {
            "code" : "1656635",
            "display" : "alemtuzumab 30 MG/ML Injection [Campath]"
          },
          {
            "code" : "1164265",
            "display" : "alemtuzumab Injectable Product"
          },
          {
            "code" : "1656629",
            "display" : "alemtuzumab Injection"
          },
          {
            "code" : "1656632",
            "display" : "alemtuzumab Injection [Campath]"
          },
          {
            "code" : "1656637",
            "display" : "alemtuzumab Injection [Lemtrada]"
          },
          {
            "code" : "1172298",
            "display" : "Campath Injectable Product"
          },
          {
            "code" : "1594662",
            "display" : "Lemtrada Injectable Product"
          }
        ]
      }
    ]
  }
}

```
