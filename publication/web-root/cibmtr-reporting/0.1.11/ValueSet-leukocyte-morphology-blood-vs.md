# Leukocyte morphology panel - Blood (58407-8) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leukocyte morphology panel - Blood (58407-8)**

## ValueSet: Leukocyte morphology panel - Blood (58407-8) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/leukocyte-morphology-blood-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:LeukocyteMorphologyBloodVS |

 
Leukocyte morphology panel - Blood (58407-8) 

 **References** 

* Included into [SmearMorphologyBloodVS](ValueSet-smear-morphology-blood-vs.md)

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
  "id" : "leukocyte-morphology-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/leukocyte-morphology-blood-vs",
  "version" : "0.1.11",
  "name" : "LeukocyteMorphologyBloodVS",
  "title" : "Leukocyte morphology panel - Blood (58407-8)",
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
  "description" : "Leukocyte morphology panel - Blood (58407-8)",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "11281-3",
            "display" : "Auer rods [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7792-5",
            "display" : "Dohle body [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "33215-5",
            "display" : "Neutrophils.agranular [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "765-8",
            "display" : "Neutrophils.hypersegmented [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "18319-4",
            "display" : "Neutrophils.vacuolated [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "18311-1",
            "display" : "Pelger Huet cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "13048-4",
            "display" : "Sezary cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7798-2",
            "display" : "Smudge cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "803-7",
            "display" : "Toxic granules [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "11156-7",
            "display" : "Leukocyte morphology finding [Identifier] in Blood"
          }
        ]
      }
    ]
  }
}

```
