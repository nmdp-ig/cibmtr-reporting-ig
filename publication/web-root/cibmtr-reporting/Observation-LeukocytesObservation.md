# LeukocytesObservation - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LeukocytesObservation**

## Example Observation: LeukocytesObservation

Profile: [CIBMTR Observation Laboratory Results Profile (us-core)](StructureDefinition-cibmtr-observation-lab.md)

Security Label: 

**status**: Final

**category**: Laboratory

**code**: Leukocytes [#/volume] in Blood

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: 5.2 billion per liter (Details: UCUM code10*9/L = '10*9/L')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "LeukocytesObservation",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab"],
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
      "code" : "26464-8",
      "display" : "Leukocytes [#/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueQuantity" : {
    "value" : 5.2,
    "unit" : "billion per liter",
    "system" : "http://unitsofmeasure.org",
    "code" : "10*9/L"
  }
}

```
