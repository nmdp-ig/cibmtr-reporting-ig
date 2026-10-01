# Cytogenetics-Example-1 - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cytogenetics-Example-1**

## Example Observation: Cytogenetics-Example-1

Profile: [CIBMTR Cytogenetics Profile](StructureDefinition-cibmtr-cytogenetics.md)

Security Label: 

**status**: Final

**category**: Laboratory

**code**: Genetic variant assessment

**subject**: [Jane Doe Female, DoB Unknown ( http://example.org/mrn#abc)](Patient-PatientExample1.md)

**effective**: 2022-05-01

**method**: Fluorescence in situ hybridization

> **component****code**: Variant ISCN**value**: 47<2n>,XY,-7,+8,t(9;22)(q34.1;q11.2),i(17)(q10),+der(22)t(9;22)(q34.1;q11.2)

> **component****code**: Genomic source class**value**: Somatic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Cytogenetics-Example-1",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-cytogenetics"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "69548-6",
      "display" : "Genetic variant assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample1"
  },
  "effectiveDateTime" : "2022-05-01",
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "426329006",
      "display" : "Fluorescence in situ hybridization"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "81291-7",
        "display" : "Variant ISCN"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://iscn.karger.com",
        "code" : "47<2n>,XY,-7,+8,t(9;22)(q34.1;q11.2),i(17)(q10),+der(22)t(9;22)(q34.1;q11.2)"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48002-0",
        "display" : "Genomic source class"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6684-0",
        "display" : "Somatic"
      }]
    }
  }]
}

```
