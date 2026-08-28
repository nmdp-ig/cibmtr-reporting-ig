# Platelet morphology panel - Blood (58406-0) - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Platelet morphology panel - Blood (58406-0)**

## ValueSet: Platelet morphology panel - Blood (58406-0) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/platelet-morphology-blood-vs | *Version*:0.1.12 |
| Draft as of 2026-08-28 | *Computable Name*:PlateletMorphologyBloodVS |

 
Platelet morphology panel - Blood (58406-0) 

 **References** 

* Included into [Smear morphology panel - Blood (34994-4)](ValueSet-smear-morphology-blood-vs.md)

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
  "id" : "platelet-morphology-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/platelet-morphology-blood-vs",
  "version" : "0.1.12",
  "name" : "PlateletMorphologyBloodVS",
  "title" : "Platelet morphology panel - Blood (58406-0)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-28T03:34:40+00:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and NMDP",
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
  "description" : "Platelet morphology panel - Blood (58406-0)",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "7796-6",
        "display" : "Platelet clump [Presence] in Blood by Light microscopy"
      },
      {
        "code" : "18312-9",
        "display" : "Platelet satellitism [Presence] in Blood by Light microscopy"
      },
      {
        "code" : "33216-3",
        "display" : "Platelets agranular [Presence] in Blood by Light microscopy"
      },
      {
        "code" : "5908-9",
        "display" : "Giant platelets [Presence] in Blood by Light microscopy"
      },
      {
        "code" : "32146-3",
        "display" : "Platelets Large [Presence] in Blood by Light microscopy"
      },
      {
        "code" : "32208-1",
        "display" : "Platelets Small [Presence] in Blood by Light microscopy"
      },
      {
        "code" : "11125-2",
        "display" : "Platelet morphology finding [Identifier] in Blood"
      }]
    }]
  }
}

```
