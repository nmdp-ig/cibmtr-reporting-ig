# BodyHeight - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BodyHeight**

## Example Observation: BodyHeight

Profile: [CIBMTR Vital Signs-Height Profile (us-core)](StructureDefinition-cibmtr-vital-signs-height.md)

Security Label: 

**status**: Final

**category**: Vital Signs

**code**: Body height

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: 65.89999999999999 in (Details: UCUM code[in_i] = '[in_i]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BodyHeight",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-vital-signs-height"],
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
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8302-2"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueQuantity" : {
    "value" : 65.89999999999999,
    "unit" : "in",
    "system" : "http://unitsofmeasure.org",
    "code" : "[in_i]"
  }
}

```
