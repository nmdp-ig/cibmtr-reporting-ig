# CIBMTR Medication Related (mcode) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Medication Related (mcode)**

## Resource Profile: CIBMTR Medication Related (mcode) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medications | *Version*:0.1.11 |
| Draft as of 2026-08-19 | *Computable Name*:CIBMTR_Medications |

### Overview

Medication-related FHIR resources may be submitted to the CIBMTR Direct FHIR API (see the R4 Connection Guide). These profiles are derived from profiles defined in the US Core and mCODE Implementation Guides. The CIBMTR profiles extend the base profiles by requiring the **meta.security** element to identify the submitting center and by applying bindings to CIBMTR-defined or RxNorm-based ValueSets where applicable. In some cases, elements that were optional in the original profiles may be required in the CIBMTR profiles.

The MedicationRequest resource is the primary medication-related resource received by CIBMTR. It is patient-specific and represents a medication order or request for an individual subject. Medication details are provided through the medication reference section in MedicationRequest, which points to a Medication resource.

The Medication resource is definitional and provides the medication information referenced by MedicationRequest. A Medication resource may also reference another Medication resource when additional medication details or relationships need to be represented.

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Must Have**) or must be supported if the data is present in the sending system (**Must Support**).

**Each MedicationRequest Must Have:**

* security label
* status
* medication information (medicationReference or medicationCodeableConcept)
* patient reference (subject)
* authored date

**Each MedicationRequest Must Support:**

* requester
* dosage instruction
* medication route
* reason for medication
* category
* note
* encounter reference

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**
 The CIBMTR MedicationRequest profile requires a `meta.security` label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**medication[x]** 
 Medication information in MedicationRequest must be represented using one of the following:

`medicationReference` — references a Medication resource containing medication details, or `medicationCodeableConcept` — directly provides the medication code. A code system value **SHOULD** be supplied for each code.

At least one representation is required in MedicationRequest.

When `medicationReference` is used, the referenced Medication resource provides definitional and reusable medication information that may be shared across one or more MedicationRequest resources. A Medication resource may also reference another Medication resource to represent additional medication relationships or details through nested medication references.

**subject**
 The **subject** element is mandatory and must contain a reference to a Patient resource identifying the subject of the medication request.

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-medications)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-medications.csv), [Excel](StructureDefinition-cibmtr-medications.xlsx), [Schematron](StructureDefinition-cibmtr-medications.sch) 

### Notes:

#### medicationReference vs medicationCodeableConcept

MedicationRequest may reference a Medication resource through the `medicationReference` element. This has the form:

```
  "medicationReference" : {
    "reference" : "Medication/<resource Id>"
  }

```

This approach is useful when the same medication needs to be reused across multiple MedicationRequest resources or when the medication description is more complex than a single RxNorm code, such as medications containing multiple ingredients.

Alternatively, medication information may be represented using the `medicationCodeableConcept` element. In this case, medication codes are provided directly within the MedicationRequest resource. This approach is appropriate when the medication can be represented using one or more equivalent RxNorm codes, typically for medications with a single ingredient.

The following example shows multiple RxNorm codes representing equivalent medication concepts:

```
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "4179",
        "display" : "etoposide"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "310248",
        "display" : "etoposide 20 MG/ML Injectable Solution"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "362972",
        "display" : "etoposide Injectable Solution [Vepesid]"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "206832",
        "display" : "etoposide 20 MG/ML Injectable Solution [Vepesid]"
      }
    ],
    "text" : "ETOPOSIDE 20 MG/ML IV SOLN"
  }

```

#### reasonCode

MedicationRequest provides elements to describe the reason why a medication was requested. This information is often useful to CIBMTR for understanding the clinical context of the medication request.

Reason codes may be represented using SNOMED CT codes, ICD-10 codes, or both when the codes are clinically equivalent.

The following example shows equivalent SNOMED CT and ICD-10 reason codes:

```
"reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "363346000",
          "display" : "Malignant neoplastic disease (disorder)"
        },
        {
          "system" : "http://hl7.org/fhir/sid/icd-10-cm",
          "code" : "C80.1",
          "display" : "Malignant (primary) neoplasm, unspecified"
        }
      ],
      "text" : "Cancer (CMS/HCC)"
    }
  ]

```

### Medication-related Artifacts

#### CIBMTR Medication-related Profiles

* [CIBMTR Medication Request (mcode)](StructureDefinition-cibmtr-medication-request.md)
* [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.md)

#### RxNorm ValueSets

* [Mobilizing Agents (auto only)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.2/expansion/Latest) - 203 concepts
* [Prep Regimen](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.6/expansion/Latest) - 501 concepts
* [Additional Drugs in Peri-Transplant Period](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.4/expansion/Latest) - 75 concepts
* [GVHD Prophylaxis](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.8/expansion/Latest) - 582 concepts
* [Post-HCT Disease Therapy Planned](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.9/expansion/Latest) - 491 concepts
* [Prior Exposure: Potential Study Eligibility](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.10/expansion/Latest) - 58 concepts
* [All meds in Form 2400] - 1737 concepts

#### Medication profiles that bind to these ValueSets:

* [CIBMTR Mobilizing Agent Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.md)
* [CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.md)
* [CIBMTR Additional Drugs in Peri-Transplant Period Medication](StructureDefinition-cibmtr-additional-peri-transplant-medication.md)
* [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.md)
* [CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.md)
* [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.md)

### Examples

#### MedicationRequest

* [MedicationRequest-Etoposide-Example](MedicationRequest-MedicationRequest-Etoposide-Example.md): Medication Request for Etoposide (Vepesid) chemo IBPB, 20MG/ML

#### Medication

* [Medication-Cyclophosphamide-Example](Medication-Medication-Cyclophosphamide-Example.md): Cyclophosphamide, 1 G injection
* [Medication-Etoposide-Example](Medication-Medication-Etoposide-Example.md): Etoposide (Vepesid) chemo IBPB, 20MG/ML
* [Medication-GVHD-Prophylaxis-Example](Medication-Medication-GVHD-Prophylaxis-Example.md): GVHD Prophylaxis - Cyclosporine
* [Medication-Mobilizing-Agent-Example](Medication-Medication-Mobilizing-Agent-Example.md): Mobilizing Agent - Pegfilgrastim
* [Medication-Peri-Transplant-Example](Medication-Medication-Peri-Transplant-Example.md): Additional Peri-Transplant - Anti-Thymocyte Gobulin
* [Medication-Post-HCT-Disease-Therapy-Example](Medication-Medication-Post-HCT-Disease-Therapy-Example.md): Post-HCT Disease Therapy Planned - Blinatumomab
* [Medication-Prep-Regimen-Example](Medication-Medication-Prep-Regimen-Example.md): Mobilizing Agent - Pegfilgrastim
* [Medication-PriorExposure-Example](Medication-Medication-PriorExposure-Example.md): Prior Exposure: Potential Study Eligibility - Mogamulizumab

-------



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-medications",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medications",
  "version" : "0.1.11",
  "name" : "CIBMTR_Medications",
  "title" : "CIBMTR Medication Related (mcode)",
  "status" : "draft",
  "date" : "2026-08-19T10:07:56-05:00",
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
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medications"
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
