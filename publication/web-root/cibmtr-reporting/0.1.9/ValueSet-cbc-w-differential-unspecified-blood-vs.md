# CBC W Differential panel, method unspecified - Blood (69742-5) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CBC W Differential panel, method unspecified - Blood (69742-5)**

## ValueSet: CBC W Differential panel, method unspecified - Blood (69742-5) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-w-differential-unspecified-blood-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:CBCWDifferentialUnspecifiedBloodVS |

 
CBC W Differential panel, method unspecified - Blood (69742-5) 

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
  "id" : "cbc-w-differential-unspecified-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-w-differential-unspecified-blood-vs",
  "version" : "0.1.11",
  "name" : "CBCWDifferentialUnspecifiedBloodVS",
  "title" : "CBC W Differential panel, method unspecified - Blood (69742-5)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T07:35:08-05:00",
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
  "description" : "CBC W Differential panel, method unspecified - Blood (69742-5)",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "20570-8",
            "display" : "Hematocrit [Volume Fraction] of Blood"
          },
          {
            "code" : "26453-1",
            "display" : "Erythrocytes [#/volume] in Blood"
          },
          {
            "code" : "718-7",
            "display" : "Hemoglobin [Mass/volume] in Blood"
          },
          {
            "code" : "26515-7",
            "display" : "Platelets [#/volume] in Blood"
          },
          {
            "code" : "28539-5",
            "display" : "MCH [Entitic mass]"
          },
          {
            "code" : "28540-3",
            "display" : "MCHC [Mass/volume]"
          },
          {
            "code" : "28542-9",
            "display" : "Platelet mean volume [Entitic volume] in Blood"
          },
          {
            "code" : "30384-2",
            "display" : "Erythrocyte distribution width [Entitic volume]"
          },
          {
            "code" : "30385-9",
            "display" : "Erythrocyte distribution width [Ratio]"
          },
          {
            "code" : "30428-7",
            "display" : "MCV [Entitic volume]"
          }
        ]
      },
      {
        "valueSet" : [
          "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/differential-unspecified-blood-vs"
        ]
      }
    ]
  }
}

```
