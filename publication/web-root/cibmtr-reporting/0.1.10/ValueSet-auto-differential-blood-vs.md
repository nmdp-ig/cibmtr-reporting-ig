# Auto Differential panel - Blood (57023-4) - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Auto Differential panel - Blood (57023-4)**

## ValueSet: Auto Differential panel - Blood (57023-4) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/auto-differential-blood-vs | *Version*:0.1.10 |
| Draft as of 2026-04-23 | *Computable Name*:AutoDifferentialBloodVS |

 
Auto Differential panel - Blood (57023-4) 

 **References** 

* Included into [CBCWAutoDifferentialBloodVS](ValueSet-cbc-w-auto-differential-blood-vs.md)

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
  "id" : "auto-differential-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/auto-differential-blood-vs",
  "version" : "0.1.10",
  "name" : "AutoDifferentialBloodVS",
  "title" : "Auto Differential panel - Blood (57023-4)",
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
  "description" : "Auto Differential panel - Blood (57023-4)",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "770-8",
            "display" : "Neutrophils/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "35332-6",
            "display" : "Band form neutrophils/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "19023-1",
            "display" : "Granulocytes/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "736-9",
            "display" : "Lymphocytes/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "42250-1",
            "display" : "Variant lymphocytes/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "5905-5",
            "display" : "Monocytes/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "713-8",
            "display" : "Eosinophils/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "706-2",
            "display" : "Basophils/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "58409-4",
            "display" : "Other cells/100 leukocytes in Blood by Automated count"
          },
          {
            "code" : "751-8",
            "display" : "Neutrophils [#/volume] in Blood by Automated count"
          },
          {
            "code" : "30229-9",
            "display" : "Band form neutrophils [#/volume] in Blood by Automated count"
          },
          {
            "code" : "731-0",
            "display" : "Lymphocytes [#/volume] in Blood by Automated count"
          },
          {
            "code" : "43743-4",
            "display" : "Variant lymphocytes [#/volume] in Blood by Automated count"
          },
          {
            "code" : "742-7",
            "display" : "Monocytes [#/volume] in Blood by Automated count"
          },
          {
            "code" : "711-2",
            "display" : "Eosinophils [#/volume] in Blood by Automated count"
          },
          {
            "code" : "704-7",
            "display" : "Basophils [#/volume] in Blood by Automated count"
          },
          {
            "code" : "51383-8",
            "display" : "Leukocytes other [#/volume] in Blood by Automated count"
          },
          {
            "code" : "58443-3",
            "display" : "Other cells [#/volume] in Blood by Automated count"
          }
        ]
      }
    ]
  }
}

```
