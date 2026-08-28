# CBC panel - Blood by Automated count (58410-2) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CBC panel - Blood by Automated count (58410-2)**

## ValueSet: CBC panel - Blood by Automated count (58410-2) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-blood-automated-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:CBCBloodAutomatedVS |

 
CBC panel - Blood by Automated count (58410-2) 

 **References** 

* Included into [CBCWAutoDifferentialBloodVS](ValueSet-cbc-w-auto-differential-blood-vs.md)
* Included into [CBCWOrderedManualDifferentialBloodVS](ValueSet-cbc-w-ordered-manual-differential-blood-vs.md)

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
  "id" : "cbc-blood-automated-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-blood-automated-vs",
  "version" : "0.1.11",
  "name" : "CBCBloodAutomatedVS",
  "title" : "CBC panel - Blood by Automated count (58410-2)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T15:00:38+00:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.cibmtr.org"
    }]
  },
  {
    "name" : "Bob Milius",
    "telecom" : [{
      "system" : "email",
      "value" : "bmilius@nmdp.org"
    }]
  }],
  "description" : "CBC panel - Blood by Automated count (58410-2)",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "6690-2",
        "display" : "Leukocytes [#/volume] in Blood by Automated count"
      },
      {
        "code" : "789-8",
        "display" : "Erythrocytes [#/volume] in Blood by Automated count"
      },
      {
        "code" : "718-7",
        "display" : "Hemoglobin [Mass/volume] in Blood"
      },
      {
        "code" : "4544-3",
        "display" : "Hematocrit [Volume Fraction] of Blood by Automated count"
      },
      {
        "code" : "787-2",
        "display" : "MCV [Entitic volume] by Automated count"
      },
      {
        "code" : "785-6",
        "display" : "MCH [Entitic mass] by Automated count"
      },
      {
        "code" : "786-4",
        "display" : "MCHC [Mass/volume] by Automated count"
      },
      {
        "code" : "21000-5",
        "display" : "Erythrocyte distribution width [Entitic volume] by Automated count"
      },
      {
        "code" : "788-0",
        "display" : "Erythrocyte distribution width [Ratio] by Automated count"
      },
      {
        "code" : "777-3",
        "display" : "Platelets [#/volume] in Blood by Automated count"
      },
      {
        "code" : "32207-3",
        "display" : "Platelet distribution width [Entitic volume] in Blood by Automated count"
      },
      {
        "code" : "32623-1",
        "display" : "Platelet mean volume [Entitic volume] in Blood by Automated count"
      }]
    }]
  }
}

```
