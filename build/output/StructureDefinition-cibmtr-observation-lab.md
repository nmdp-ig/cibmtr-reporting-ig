# CIBMTR Observation Laboratory Results Profile (us-core) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Observation Laboratory Results Profile (us-core)**

## Resource Profile: CIBMTR Observation Laboratory Results Profile (us-core) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab | *Version*:0.1.11 |
| Draft as of 2026-06-21 | *Computable Name*:CIBMTRObservationLab |

### Overview

Laboratory Observation FHIR resources may be submitted to the CIBMTR Direct FHIR API (see the R4 Connection Guide). These profiles are derived from profiles defined in the US Core Implementation Guide. The CIBMTR profiles extend the base profiles by requiring the `meta.security` element to identify the submitting center and by applying bindings to CIBMTR-defined or laboratory-specific ValueSets where applicable. The Laboratory Observation resource is patient-specific and represents laboratory test results and related laboratory observations for an individual subject.

-------

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Mandatory**) or must be supported if the data is present in the sending system (**Must Support**). Additional guidance and examples are provided in the sections below.

**Each Laboratory Observation Must Have:**

* security label
* status
* laboratory test code (code)
* patient reference (subject)
* effective date/time

**Each Laboratory Observation Must Support:**

* encounter reference
* specimen reference
* reference range
* interpretation
* performer
* note

-------

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**
 The CIBMTR observation laboratory results profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**code**
 The code element identifies the laboratory test or observation being reported. Laboratory test codes are typically represented using LOINC codes or CIBMTR-defined laboratory ValueSets where applicable.

**subject**
 The **subject** element is mandatory and must contain a reference to a Patient resource identifying the subject of the medication request.

**value[x]**
 Observation result values may be represented in multiple forms. CIBMTR currently supports only valueQuantity for numeric results and valueCodeableConcept for categorical results. For valueCodeableConcept, only coded values are supported. Other value types, such as valueString, are not currently supported.

**valueQuantity.comparator**
 There are cases where the laboratory result exceeds the measurable limits of the test and a comparator such as < or > is required. In these cases, the valueQuantity.comparator element **MUST** be used.

**referenceRange**
 For CMV LOINC codes that use valueQuantity, a corresponding referenceRange element **MUST** also be provided.

-------

**Usages:**

* Derived from this Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)
* Examples for this Profile: [Observation/LeukocytesObservation](Observation-LeukocytesObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-observation-lab)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-observation-lab.csv), [Excel](StructureDefinition-cibmtr-observation-lab.xlsx), [Schematron](StructureDefinition-cibmtr-observation-lab.sch) 

### Notes:

#### Value[x]

Observation result values may be represented in multiple forms. CIBMTR currently supports only the following value types:

* `valueQuantity` 
* Per [US-Core Laboratory Observation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), coded quantity units **SHALL** use UCUM for coded quantity units. For example:
 

```
"valueQuantity" : {
  "value" : 5,
  "unit" : "gram per deciliter",
  "system" : "http://unitsofmeasure.org",
  "code" : "g/dL"
}

```

* `valueCodeableConcept` 
* Per [US-Core Laboratory Observation](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html), coded result values **SHOULD** use Snomed CT for coded Results. For example:
 

```
"valueCodeableConcept" : {
  "coding" : [
    {
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive (qualifier value)"
    }
  ]
}

```

CIBMTR does **NOT** currently support any other value types, such as valueString.

#### Using comparators in valueQuantity

In some cases, the laboratory result exceeds the measurable limits of the test and requires a comparator such as < or >. In these cases, the `valueQuantity.comparator` **MUST** be used. For example:

```
"valueQuantity" : {
  "value" : 13700,
  "comparator" : "<",
  "unit" : "international unit per milliliter",
  "system" : "http://unitsofmeasure.org",
  "code" : "[IU]/mL"
}

```

#### Special rules:

* For CMV LOINC codes that use `valueQuantity`, a corresponding `referenceRange` element **MUST** also be provided. For example:

```
"referenceRange" : [
  {
    "low" : {
      "value" : 13700,
      "unit" : "international unit per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "[IU]/mL"
    },
    "high" : {
      "value" : 9000000,
      "unit" : "international unit per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "[IU]/mL"
    }
  }
]

```



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-observation-lab",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab",
  "version" : "0.1.11",
  "name" : "CIBMTRObservationLab",
  "title" : "CIBMTR Observation Laboratory Results Profile (us-core)",
  "status" : "draft",
  "date" : "2026-06-21T23:16:04-05:00",
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
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab",
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
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab"
          }
        ]
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1
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
          },
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
                "valueBoolean" : true
              }
            ],
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
