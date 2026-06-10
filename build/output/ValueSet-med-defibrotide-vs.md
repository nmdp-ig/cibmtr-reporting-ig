# RxNorm - Defibrotide - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Defibrotide**

## ValueSet: RxNorm - Defibrotide (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-defibrotide-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:RxNormDefibrotideVS |

 
RxNorm codes for Defibrotide 

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
  "id" : "med-defibrotide-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-defibrotide-vs",
  "version" : "0.1.11",
  "name" : "RxNormDefibrotideVS",
  "title" : "RxNorm - Defibrotide",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T12:52:28-05:00",
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
  "description" : "RxNorm codes for Defibrotide",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "1311089",
            "display" : "defibrotide"
          },
          {
            "code" : "1746523",
            "display" : "defibrotide sodium"
          },
          {
            "code" : "1746528",
            "display" : "Defitelio"
          },
          {
            "code" : "1788946",
            "display" : "defibrotide, bovine lung"
          },
          {
            "code" : "1746532",
            "display" : "2.5 ML defibrotide sodium 80 MG/ML Injection [Defitelio]"
          },
          {
            "code" : "1746525",
            "display" : "defibrotide Injectable Product"
          },
          {
            "code" : "1746526",
            "display" : "defibrotide Injection"
          },
          {
            "code" : "1746530",
            "display" : "defibrotide Injection [Defitelio]"
          },
          {
            "code" : "1746524",
            "display" : "defibrotide sodium 80 MG/ML"
          },
          {
            "code" : "1746529",
            "display" : "defibrotide sodium 80 MG/ML [Defitelio]"
          },
          {
            "code" : "1746534",
            "display" : "defibrotide sodium 80 MG/ML Injection [Defitelio]"
          },
          {
            "code" : "1746531",
            "display" : "Defitelio Injectable Product"
          }
        ]
      }
    ]
  }
}

```
