# CIBMTR Observation Laboratory Results Profile (us-core) - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Observation Laboratory Results Profile (us-core)**

## Resource Profile: CIBMTR Observation Laboratory Results Profile (us-core) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab | *Version*:0.1.10 |
| Draft as of 2026-05-27 | *Computable Name*:CIBMTRObservationLab |

 
CIBMTR Observation Laboratory Results Profile (us-core) 

# Intro

This is describes how FHIR Observations should be formated for submission to the CIBMTR Direct, and what ValueSets should be used.

**Usages:**

* Derived from this Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)
* Examples for this Profile: [Observation/LeukocytesObservation](Observation-LeukocytesObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/StructureDefinition-cibmtr-observation-lab.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-observation-lab.csv), [Excel](StructureDefinition-cibmtr-observation-lab.xlsx), [Schematron](StructureDefinition-cibmtr-observation-lab.sch) 

### Notes:

# Notes

#### Value[x]

Observation values can be reported in many forms. CIBMTR currently supports only two:

* `valueQuantity`
* `valueCodeableConcept`

CIBMTR does **NOT** support any other value types (e.g., `valueString` is not currently supported)

#### Special rules:

* For CMV LOINC codes that use `ValueQuantity`, it **MUST** be accompanied with a `referenceRange`



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-observation-lab",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab",
  "version" : "0.1.10",
  "name" : "CIBMTRObservationLab",
  "title" : "CIBMTR Observation Laboratory Results Profile (us-core)",
  "status" : "draft",
  "date" : "2026-05-27T18:39:21+00:00",
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
  "description" : "CIBMTR Observation Laboratory Results Profile (us-core)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.security",
      "path" : "Observation.meta.security",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "description" : "slicing on meta.security",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.meta.security:TransplantCenter",
      "path" : "Observation.meta.security",
      "sliceName" : "TransplantCenter",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.meta.security:TransplantCenter.system",
      "path" : "Observation.meta.security.system",
      "min" : 1,
      "patternUri" : "http://terminology.cibmtr.org/codesystem/transplant-center"
    },
    {
      "id" : "Observation.meta.security:TransplantCenter.code",
      "path" : "Observation.meta.security.code",
      "min" : 1,
      "constraint" : [{
        "key" : "sec-rc",
        "severity" : "error",
        "human" : "Use transplant center identifier for security tag",
        "expression" : "matches('^rc_[0-9]{5}$')",
        "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab"
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "min" : 1
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "Quantity"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
