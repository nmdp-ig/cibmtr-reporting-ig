# EosinophilsObservation - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EosinophilsObservation**

## Example Observation: EosinophilsObservation

Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)

Security Label: 

**status**: Final

**category**: Laboratory

**code**: Eosinophils [#/volume] in Blood

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: 0.5 Thousands Per MicroLiter (Details: UCUM code10*3/uL = '10*3/uL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "EosinophilsObservation",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"],
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
      "code" : "26449-9",
      "display" : "Eosinophils [#/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueQuantity" : {
    "value" : 0.5,
    "unit" : "Thousands Per MicroLiter",
    "system" : "http://unitsofmeasure.org",
    "code" : "10*3/uL"
  }
}

```
