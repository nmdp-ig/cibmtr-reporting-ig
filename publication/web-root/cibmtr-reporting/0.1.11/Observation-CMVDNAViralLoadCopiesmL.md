# CMVDNAViralLoadCopiesmL - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CMVDNAViralLoadCopiesmL**

## Example Observation: CMVDNAViralLoadCopiesmL

Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)

Security Label: 

**status**: Final

**category**: Laboratory

**code**: Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: 6000000 copies per milliliter (Details: UCUM code{copies}/mL = '{copies}/mL')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 100 copies per milliliter (Details: UCUM code{copies}/mL = '{copies}/mL') | 10000000 copies per milliliter (Details: UCUM code{copies}/mL = '{copies}/mL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CMVDNAViralLoadCopiesmL",
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
      "code" : "49349-4",
      "display" : "Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueQuantity" : {
    "value" : 6000000,
    "unit" : "copies per milliliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "{copies}/mL"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 100,
      "unit" : "copies per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "{copies}/mL"
    },
    "high" : {
      "value" : 10000000,
      "unit" : "copies per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "{copies}/mL"
    }
  }]
}

```
