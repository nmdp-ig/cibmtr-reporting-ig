# CIBMTR Medication (us-core) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Medication (us-core)**

## Resource Profile: CIBMTR Medication (us-core) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication | *Version*:0.1.11 |
| Draft as of 2026-08-18 | *Computable Name*:CIBMTR_Medication |

 
CIBMTR Medication (us-core) 

**Usages:**

* Derived from this Profile: [CIBMTR Additional Drugs in Peri-Transplant Period](StructureDefinition-cibmtr-additional-peri-transplant-medication.md), [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.md), [CIBMTR Mobilizing Agents Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.md), [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.md)...Show 2 more,[CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.md)and[CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.md)
* Examples for this Profile: [Medication/Medication-Cyclophosphamide-Example](Medication-Medication-Cyclophosphamide-Example.md) and [Medication/Medication-Etoposide-Example](Medication-Medication-Etoposide-Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-medication.csv), [Excel](StructureDefinition-cibmtr-medication.xlsx), [Schematron](StructureDefinition-cibmtr-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-medication",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication",
  "version" : "0.1.11",
  "name" : "CIBMTR_Medication",
  "title" : "CIBMTR Medication (us-core)",
  "status" : "draft",
  "date" : "2026-08-18T15:36:33-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and NMDP",
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
  "description" : "CIBMTR Medication (us-core)",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.meta.security",
        "path" : "Medication.meta.security",
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
        "id" : "Medication.meta.security:TransplantCenter",
        "path" : "Medication.meta.security",
        "sliceName" : "TransplantCenter",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Medication.meta.security:TransplantCenter.system",
        "path" : "Medication.meta.security.system",
        "min" : 1,
        "patternUri" : "http://terminology.cibmtr.org/codesystem/transplant-center"
      },
      {
        "id" : "Medication.meta.security:TransplantCenter.code",
        "path" : "Medication.meta.security.code",
        "min" : 1,
        "constraint" : [
          {
            "key" : "sec-rc",
            "severity" : "error",
            "human" : "Use transplant center identifier for security tag",
            "expression" : "matches('^rc_[0-9]{5}$')",
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication"
          }
        ]
      }
    ]
  }
}

```
