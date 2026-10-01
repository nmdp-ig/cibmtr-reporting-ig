# NeutrophilsObservation - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NeutrophilsObservation**

## Example Observation: NeutrophilsObservation

Profile: [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

**status**: Final

**category**: Laboratory

**code**: Neutrophils [#/volume] in Cord blood

**subject**: [Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-21 14:17:00+0000

**value**: 7.9 billion per liter(Details: UCUM code10*9/L = '10*9/L')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "NeutrophilsObservation",
  "meta" : {
    "profile" : [
      "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
    ],
    "security" : [
      {
        "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
        "code" : "rc_99999",
        "display" : "99999 My Transplant Center"
      }
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "74398-9",
        "display" : "Neutrophils [#/volume] in Cord blood"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-21T14:17:00Z",
  "valueQuantity" : {
    "value" : 7.9,
    "unit" : "billion per liter",
    "system" : "http://unitsofmeasure.org",
    "code" : "10*9/L"
  }
}

```
