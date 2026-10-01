# CMVIgMAbPresenceLOINC - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CMVIgMAbPresenceLOINC**

## Example Observation: CMVIgMAbPresenceLOINC

Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)

Security Label: 

**status**: Final

**category**: Laboratory

**code**: Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: Reactive



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CMVIgMAbPresenceLOINC",
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
      "code" : "24119-0",
      "display" : "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA15255-5",
      "display" : "Reactive"
    }]
  }
}

```
