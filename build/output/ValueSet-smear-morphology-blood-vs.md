# Smear morphology panel - Blood (34994-4) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Smear morphology panel - Blood (34994-4)**

## ValueSet: Smear morphology panel - Blood (34994-4) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/smear-morphology-blood-vs | *Version*:0.1.11 |
| Draft as of 2026-06-22 | *Computable Name*:SmearMorphologyBloodVS |

 
Smear morphology panel - Blood (34994-4) 

 **References** 

* Included into [ManualDifferentialBloodVS](ValueSet-manual-differential-blood-vs.md)

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
  "id" : "smear-morphology-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/smear-morphology-blood-vs",
  "version" : "0.1.11",
  "name" : "SmearMorphologyBloodVS",
  "title" : "Smear morphology panel - Blood (34994-4)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-22T08:51:47-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the NMDP",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and the NMDP",
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
  "description" : "Smear morphology panel - Blood (34994-4)",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "9317-9",
            "display" : "Platelet adequacy [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "18280-8",
            "display" : "Background stain [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "32778-3",
            "display" : "Fibrin strands [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "5909-7",
            "display" : "Blood smear finding [Identifier] in Blood by Light microscopy"
          }
        ]
      },
      {
        "valueSet" : [
          "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/erythrocyte-morphology-blood-vs"
        ]
      },
      {
        "valueSet" : [
          "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/leukocyte-morphology-blood-vs"
        ]
      },
      {
        "valueSet" : [
          "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/platelet-morphology-blood-vs"
        ]
      }
    ]
  }
}

```
