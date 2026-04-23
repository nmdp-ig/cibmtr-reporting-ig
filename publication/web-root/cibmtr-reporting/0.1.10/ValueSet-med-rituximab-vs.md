# RxNorm - Rituximab - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Rituximab**

## ValueSet: RxNorm - Rituximab (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-rituximab-vs | *Version*:0.1.10 |
| Draft as of 2026-04-23 | *Computable Name*:RxNormRituximabVS |

 
RxNorm codes for Rituximab 

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
  "id" : "med-rituximab-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-rituximab-vs",
  "version" : "0.1.10",
  "name" : "RxNormRituximabVS",
  "title" : "RxNorm - Rituximab",
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
  "description" : "RxNorm codes for Rituximab",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "226754",
            "display" : "Rituxan"
          },
          {
            "code" : "121191",
            "display" : "rituximab"
          },
          {
            "code" : "2105824",
            "display" : "rituximab-abbs"
          },
          {
            "code" : "2105827",
            "display" : "Truxima"
          },
          {
            "code" : "2472325",
            "display" : "rituximab-arrx"
          },
          {
            "code" : "2273510",
            "display" : "rituximab-pvvr"
          },
          {
            "code" : "2472328",
            "display" : "Riabni"
          },
          {
            "code" : "1927886",
            "display" : "Rituxan Hycela"
          },
          {
            "code" : "2273513",
            "display" : "Ruxience"
          },
          {
            "code" : "1657864",
            "display" : "10 ML rituximab 10 MG/ML Injection [Rituxan]"
          },
          {
            "code" : "2105831",
            "display" : "10 ML rituximab-abbs 10 MG/ML Injection [Truxima]"
          },
          {
            "code" : "1657868",
            "display" : "50 ML rituximab 10 MG/ML Injection [Rituxan]"
          },
          {
            "code" : "2105835",
            "display" : "50 ML rituximab-abbs 10 MG/ML Injection [Truxima]"
          },
          {
            "code" : "1927882",
            "display" : "hyaluronidase / rituximab Injectable Product"
          },
          {
            "code" : "1927883",
            "display" : "hyaluronidase / rituximab Injection"
          },
          {
            "code" : "1185345",
            "display" : "Rituxan Injectable Product"
          },
          {
            "code" : "316648",
            "display" : "rituximab 10 MG/ML"
          },
          {
            "code" : "573051",
            "display" : "rituximab 10 MG/ML [Rituxan]"
          },
          {
            "code" : "1657866",
            "display" : "rituximab 10 MG/ML Injection [Rituxan]"
          },
          {
            "code" : "1927881",
            "display" : "rituximab 120 MG/ML"
          },
          {
            "code" : "1157967",
            "display" : "rituximab Injectable Product"
          },
          {
            "code" : "1657861",
            "display" : "rituximab Injection"
          },
          {
            "code" : "1657863",
            "display" : "rituximab Injection [Rituxan]"
          },
          {
            "code" : "2105829",
            "display" : "rituximab Injection [Truxima]"
          },
          {
            "code" : "2105828",
            "display" : "rituximab-abbs 10 MG/ML [Truxima]"
          },
          {
            "code" : "2105833",
            "display" : "rituximab-abbs 10 MG/ML Injection [Truxima]"
          },
          {
            "code" : "2472326",
            "display" : "rituximab-arrx 10 MG/ML"
          },
          {
            "code" : "2273511",
            "display" : "rituximab-pvvr 10 MG/ML"
          },
          {
            "code" : "2105830",
            "display" : "Truxima Injectable Product"
          },
          {
            "code" : "2105825",
            "display" : "rituximab-abbs 10 MG/ML"
          }
        ]
      }
    ]
  }
}

```
