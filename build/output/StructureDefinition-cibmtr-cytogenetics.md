# CIBMTR Cytogenetics Profile - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Cytogenetics Profile**

## Resource Profile: CIBMTR Cytogenetics Profile 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-cytogenetics | *Version*:0.1.11 |
| Draft as of 2026-06-25 | *Computable Name*:CIBMTRCytogenetics |

 
CIBMTR Cytogenetics Profile to capture ISCN 

# Intro

This is describes how cytogenetics can be reported via ISCN strings in a FHIR Observation. This profile is based on the Variant Profile defined in the HL7 Genomics Reporting IG.

**Usages:**

* Examples for this Profile: [Observation/Cytogenetics-Example-1](Observation-Cytogenetics-Example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-cytogenetics)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-cytogenetics.csv), [Excel](StructureDefinition-cibmtr-cytogenetics.xlsx), [Schematron](StructureDefinition-cibmtr-cytogenetics.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-cytogenetics",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-cytogenetics",
  "version" : "0.1.11",
  "name" : "CIBMTRCytogenetics",
  "title" : "CIBMTR Cytogenetics Profile",
  "status" : "draft",
  "date" : "2026-06-25T19:24:07-05:00",
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
  "description" : "CIBMTR Cytogenetics Profile to capture ISCN",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.meta.security",
        "path" : "Observation.meta.security",
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
        "constraint" : [
          {
            "key" : "sec-rc",
            "severity" : "error",
            "human" : "Use transplant center identifier for security tag",
            "expression" : "matches('^rc_[0-9]{5}$')",
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-cytogenetics"
          }
        ]
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Observation.effective[x]:effectiveDateTime",
        "path" : "Observation.effective[x]",
        "sliceName" : "effectiveDateTime",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "min" : 2
      },
      {
        "id" : "Observation.component:cytogenomic-nomenclature",
        "path" : "Observation.component",
        "sliceName" : "cytogenomic-nomenclature",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.component:cytogenomic-nomenclature.value[x].coding.system",
        "path" : "Observation.component.value[x].coding.system",
        "patternUri" : "https://iscn.karger.com"
      },
      {
        "id" : "Observation.component:genomic-source-class",
        "path" : "Observation.component",
        "sliceName" : "genomic-source-class",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
