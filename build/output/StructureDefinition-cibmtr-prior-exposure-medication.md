# CIBMTR Prior Exposure Medication - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Prior Exposure Medication**

## Resource Profile: CIBMTR Prior Exposure Medication 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-prior-exposure-medication | *Version*:0.1.11 |
| Draft as of 2026-06-21 | *Computable Name*:CIBMTR_PriorExposureMedication |

 
CIBMTR Prior Exposure: Potential Study Eligibility Medication 

**Usages:**

* Examples for this Profile: [Medication/Medication-PriorExposure-Example](Medication-Medication-PriorExposure-Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-prior-exposure-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-prior-exposure-medication.csv), [Excel](StructureDefinition-cibmtr-prior-exposure-medication.xlsx), [Schematron](StructureDefinition-cibmtr-prior-exposure-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-prior-exposure-medication",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-prior-exposure-medication",
  "version" : "0.1.11",
  "name" : "CIBMTR_PriorExposureMedication",
  "title" : "CIBMTR Prior Exposure Medication",
  "status" : "draft",
  "date" : "2026-06-21T21:50:44-05:00",
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
  "description" : "CIBMTR Prior Exposure: Potential Study Eligibility Medication",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.code.coding",
        "path" : "Medication.code.coding",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-prior-exposure-vs"
        }
      }
    ]
  }
}

```
