# CMVDNAViralLoadIUmL - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CMVDNAViralLoadIUmL**

## Example Observation: CMVDNAViralLoadIUmL

Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)

Security Label: 

**status**: Final

**category**: Laboratory

**code**: Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: <13700 international unit per milliliter (Details: UCUM code[IU]/mL = '[IU]/mL')

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 13700 international unit per milliliter (Details: UCUM code[IU]/mL = '[IU]/mL') | 9000000 international unit per milliliter (Details: UCUM code[IU]/mL = '[IU]/mL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CMVDNAViralLoadIUmL",
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
      "code" : "72493-0",
      "display" : "Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueQuantity" : {
    "value" : 13700,
    "comparator" : "<",
    "unit" : "international unit per milliliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "[IU]/mL"
  },
  "referenceRange" : [{
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
  }]
}

```
