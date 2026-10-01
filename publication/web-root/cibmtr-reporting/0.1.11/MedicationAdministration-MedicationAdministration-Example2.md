# MedicationAdministration-Example2 - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationAdministration-Example2**

## Example MedicationAdministration: MedicationAdministration-Example2

Profile: [CIBMTR Medication Administration (mcode)](StructureDefinition-cibmtr-medication-administration.md)

Security Label: 

**status**: Completed

**medication**: ETOPOSIDE 20 MG/ML IV SOLN

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**effective**: 2020-07-22 16:58:05+0000

**reasonCode**: Cancer (CMS/HCC)

**request**: [MedicationRequest: status = active; intent = order; medication[x] = ->etoposide (VEPESID) chemo IVPB; authoredOn = 2020-07-21 14:17:00+0000; reasonCode = Malignant neoplastic disease (disorder)](MedicationRequest-MedicationRequest-Etoposide-Example.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Route** | **Method** | **Dose** |
| * | Intravenous route | Inject - dosing instruction imperative (qualifier value) | 73 milligram (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "MedicationAdministration-Example2",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-administration"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [{
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
    }],
    "text" : "ETOPOSIDE 20 MG/ML IV SOLN"
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "effectiveDateTime" : "2020-07-22T16:58:05Z",
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363346000",
      "display" : "Malignant neoplastic disease (disorder)"
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10-cm",
      "code" : "C80.1",
      "display" : "Malignant (primary) neoplasm, unspecified"
    }],
    "text" : "Cancer (CMS/HCC)"
  }],
  "request" : {
    "reference" : "MedicationRequest/MedicationRequest-Etoposide-Example"
  },
  "dosage" : {
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "47625008",
        "display" : "Intravenous route"
      }]
    },
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422145002",
        "display" : "Inject - dosing instruction imperative (qualifier value)"
      }]
    },
    "dose" : {
      "value" : 73,
      "unit" : "milligram",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg"
    }
  }
}

```
