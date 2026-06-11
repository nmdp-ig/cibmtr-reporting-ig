# CIBMTR Medication Request (mcode) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Medication Request (mcode)**

## Resource Profile: CIBMTR Medication Request (mcode) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-request | *Version*:0.1.11 |
| Draft as of 2026-06-11 | *Computable Name*:CIBMTR_MedicationRequest |

 
CIBMTR Medication Request (mcode) 

**Usages:**

* Examples for this Profile: [MedicationRequest/MedicationRequest-Etoposide-Example](MedicationRequest-MedicationRequest-Etoposide-Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-medication-request)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-medication-request.csv), [Excel](StructureDefinition-cibmtr-medication-request.xlsx), [Schematron](StructureDefinition-cibmtr-medication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-medication-request",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-request",
  "version" : "0.1.11",
  "name" : "CIBMTR_MedicationRequest",
  "title" : "CIBMTR Medication Request (mcode)",
  "status" : "draft",
  "date" : "2026-06-11T12:11:14-05:00",
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
  "description" : "CIBMTR Medication Request (mcode)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-related-medication-request",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.meta.security",
        "path" : "MedicationRequest.meta.security",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "slicing on meta.security",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "MedicationRequest.meta.security:TransplantCenter",
        "path" : "MedicationRequest.meta.security",
        "sliceName" : "TransplantCenter",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MedicationRequest.meta.security:TransplantCenter.system",
        "path" : "MedicationRequest.meta.security.system",
        "min" : 1,
        "patternUri" : "http://terminology.cibmtr.org/codesystem/transplant-center"
      },
      {
        "id" : "MedicationRequest.meta.security:TransplantCenter.code",
        "path" : "MedicationRequest.meta.security.code",
        "min" : 1,
        "constraint" : [
          {
            "key" : "sec-rc",
            "severity" : "error",
            "human" : "Use transplant center identifier for security tag",
            "expression" : "matches('^rc_[0-9]{5}$')",
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-request"
          }
        ]
      },
      {
        "id" : "MedicationRequest.authoredOn",
        "path" : "MedicationRequest.authoredOn",
        "min" : 1
      }
    ]
  }
}

```
