# RxNorm - Cytarabine - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Cytarabine**

## ValueSet: RxNorm - Cytarabine (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-cytarabine-vs | *Version*:0.1.11 |
| Draft as of 2026-06-22 | *Computable Name*:RxNormCytarabineVS |

 
RxNorm codes for Cytarabine 

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
  "id" : "med-cytarabine-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-cytarabine-vs",
  "version" : "0.1.11",
  "name" : "RxNormCytarabineVS",
  "title" : "RxNorm - Cytarabine",
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
  "description" : "RxNorm codes for Cytarabine",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "151319",
            "display" : "Alexan"
          },
          {
            "code" : "3041",
            "display" : "cytarabine"
          },
          {
            "code" : "151577",
            "display" : "Cytosar"
          },
          {
            "code" : "220177",
            "display" : "Tarabine PFS"
          },
          {
            "code" : "196337",
            "display" : "DepoCyt"
          },
          {
            "code" : "1942744",
            "display" : "Vyxeos"
          },
          {
            "code" : "1175506",
            "display" : "Alexan Injectable Product"
          },
          {
            "code" : "2285813",
            "display" : "cytarabine / daunorubicin Injectable Product"
          },
          {
            "code" : "2285807",
            "display" : "cytarabine / daunorubicin Injection"
          },
          {
            "code" : "331779",
            "display" : "cytarabine 100 MG/ML"
          },
          {
            "code" : "332422",
            "display" : "cytarabine 20 MG/ML"
          },
          {
            "code" : "564102",
            "display" : "cytarabine 20 MG/ML [Alexan]"
          },
          {
            "code" : "564515",
            "display" : "cytarabine 20 MG/ML [Cytosar]"
          },
          {
            "code" : "572983",
            "display" : "cytarabine 20 MG/ML [Tarabine PFS]"
          },
          {
            "code" : "105580",
            "display" : "cytarabine 20 MG/ML Injectable Solution [Alexan]"
          },
          {
            "code" : "108359",
            "display" : "cytarabine 20 MG/ML Injectable Solution [Cytosar]"
          },
          {
            "code" : "213044",
            "display" : "cytarabine 20 MG/ML Injectable Solution [Tarabine PFS]"
          },
          {
            "code" : "333668",
            "display" : "cytarabine 50 MG/ML"
          },
          {
            "code" : "564516",
            "display" : "cytarabine 50 MG/ML [Cytosar]"
          },
          {
            "code" : "108360",
            "display" : "cytarabine 50 MG/ML Injectable Solution [Cytosar]"
          },
          {
            "code" : "1151483",
            "display" : "cytarabine Injectable Product"
          },
          {
            "code" : "371676",
            "display" : "cytarabine Injectable Solution"
          },
          {
            "code" : "362596",
            "display" : "cytarabine Injectable Solution [Alexan]"
          },
          {
            "code" : "363023",
            "display" : "cytarabine Injectable Solution [Cytosar]"
          },
          {
            "code" : "362991",
            "display" : "cytarabine Injectable Solution [Tarabine PFS]"
          },
          {
            "code" : "544939",
            "display" : "cytarabine Injectable Suspension"
          },
          {
            "code" : "1731354",
            "display" : "cytarabine Injection"
          },
          {
            "code" : "968805",
            "display" : "cytarabine liposome 10 MG/ML"
          },
          {
            "code" : "1942738",
            "display" : "cytarabine liposome 100 MG"
          },
          {
            "code" : "1174486",
            "display" : "Cytosar Injectable Product"
          },
          {
            "code" : "1179037",
            "display" : "Tarabine PFS Injectable Product"
          },
          {
            "code" : "2017575",
            "display" : "cytarabine / daunorubicin"
          }
        ]
      }
    ]
  }
}

```
