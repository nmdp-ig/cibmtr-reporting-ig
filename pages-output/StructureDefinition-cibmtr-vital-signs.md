# CIBMTR Vital Signs Results Profile (US Core) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Vital Signs Results Profile (US Core)**

## Resource Profile: CIBMTR Vital Signs Results Profile (US Core) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-vital-signs | *Version*:0.1.11 |
| Draft as of 2026-06-12 | *Computable Name*:CIBMTRVitalSignsVariables |

### Overview

The CIBMTR Vital Signs Profile inherits from the US Core Vital Signs Profile, which in turn inherits from the base FHIR Observation resource. This profile constrains the representation, coding, and usage of vital sign observations to support consistent reporting and downstream use in CIBMTR data collection and analysis workflows.

This profile establishes minimum expectations for representing vital sign measurements (e.g., body height, body weight, blood pressure, body temperature) recorded for a Patient and submitted to the CIBMTR FHIR server. It specifies which elements **SHALL** be present, which elements are designated as **Must Support**, and how terminology bindings are applied to ensure interoperability across reporting centers.

-------

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Mandatory**) or must be supported if the data is present in the sending system (**Must Support**). Additional guidance and examples are provided in the sections below.

**Each Vital Signs Observation Must Have:**

* security label
* status
* code identifying the vital sign being measured
* patient reference (subject)
* clinically relevant time

**Each Vital Signs Observation Must Support:**

* performer
* result value
* reason if the value is absent
* component results

-------

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**
 The CIBMTR vital signs profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**subject**
 The **subject** element is mandatory and must contain a reference to a Patient resource identifying the individual whose vital signs are being recorded.

**Terminology bindings**
 This profile binds `Observation.code` to standard LOINC codes for vital signs in accordance with the US Core Vital Signs profile. Where applicable, CIBMTR-specific value sets or constraints further limit acceptable codes to support consistent reporting.

-------

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-vital-signs)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-vital-signs.csv), [Excel](StructureDefinition-cibmtr-vital-signs.xlsx), [Schematron](StructureDefinition-cibmtr-vital-signs.sch) 

### Notes:

#### valueQuantity

Vital Signs values can be reported in many forms. CIBMTR currently supports only "valueQuantity" and does not support other `value[x]` data types (e.g., `valueString`, `valueCodeableConcept`).

Vital sign values **SHALL** be reported using UCUM units as defined by the US Core Vital Signs profile. Client systems **SHALL** ensure that numeric values and units are aligned to avoid misinterpretation or validation errors.

**Example: valueQuantity using UCUM units**

```
"valueQuantity" : {
    "value" : 65.899999999999991,
    "unit" : "in",
    "system" : "http://unitsofmeasure.org",
    "code" : "[in_i]"
}

```

-------

#### Special rules:

* One code in observation.code must have a fixed `Observation.code.coding.code` provided in the [FHIR core specification vital signs table](https://hl7.org/fhir/R4/observation-vitalsigns.html#vitals-table.html). For example, the fixed code 8302-2 is required in body height fhir data,
* Each vital signs Observation **SHALL** include a LOINC code in `Observation.code.coding.code` that corresponds to one of the fixed codes defined in the FHIR core Vital Signs table. The required LOINC code identifies the type of vital sign being reported.


  For example, a Body Height observation **SHALL** include the fixed LOINC code `8302-2`:

```
"coding" : [{
      "system" : "http://loinc.org",
      "code" : "8302-2", 
      "display" : "Body height"
    }]

```

* An Observation MAY include additional codes in Observation.code.coding that further qualify, translate, or map to the primary vital sign code. Examples include:


  -a local system-specific code -a more specific LOINC code in addition to the fixed code


  For example, a Body Weight observation may include both the fixed code 29463-7 (Body weight) and a more specific code such as 3141-9 (Body weight Measured):

```
"coding" : [
    {"system":"http://loinc.org",
     "code":"29463-7",
     "display":"Body weight"},

    {"system":"http://loinc.org",
     "code":"3141-9",
     "display":"Body weight Measured"}
    ]

```

A code system value **SHOULD** be supplied for each additional code.

* The observations **MAY** have component observations. For example, to qualify the vital sign observation, 8310-5 - Body temperature, 8327-9 - Body temperature measurement site (oral, forehead, rectal, etc.) may be used as a component observation. The FHIR core specification vital signs table provides several of these.
* An Observation **MAY** include component observations to further qualify the measurement. For example, to qualify the vital sign observation, 8310-5 - Body temperature, 8327-9 - Body temperature measurement site (oral, forehead, rectal, etc.) may be used as a component observation. The FHIR core specification vital signs table provides several of these.

-------



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-vital-signs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-vital-signs",
  "version" : "0.1.11",
  "name" : "CIBMTRVitalSignsVariables",
  "title" : "CIBMTR Vital Signs Results Profile (US Core)",
  "status" : "draft",
  "date" : "2026-06-12T09:38:46-05:00",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs",
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
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-vital-signs"
          }
        ]
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.1/expansion"
        }
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              }
            ],
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
