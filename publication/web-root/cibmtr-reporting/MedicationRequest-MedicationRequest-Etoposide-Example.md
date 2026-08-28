# MedicationRequest-Etoposide-Example - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationRequest-Etoposide-Example**

## Example MedicationRequest: MedicationRequest-Etoposide-Example

Profile: [CIBMTR Medication Request (mcode)](StructureDefinition-cibmtr-medication-request.md)

Security Label: 

**status**: Active

**intent**: Order

**medication**: [etoposide (VEPESID) chemo IVPB](Medication-Medication-Etoposide-Example.md)

**subject**: [ Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)](Patient-PatientExample6.md)

**authoredOn**: 2020-07-21 14:17:00+0000

**requester**: unknown

**reasonCode**: Cancer (CMS/HCC)

> **dosageInstruction****text**: 68 mg (100 mg/m2 x 0.68 m2 Treatment plan actual BSA), Intravenous, for 60 Minutes, Every 24 hours, First dose on Tue 11/19/13 at 0000, For 5 doses Give after CISplatin and mannitol.**timing**: Code , Count 5 times, Duration 60hours , Once per 24 hours**asNeeded**: false**route**: Intravenous central route (qualifier value)
> **doseAndRate****type**: admin-amount**dose**: 68 milligram (Details: UCUM codemg = 'mg')

> **doseAndRate****type**: ordered**dose**: 100 milligram per square meter (Details: UCUM codemg/m2 = 'mg/m2')



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "MedicationRequest-Etoposide-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-request"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/Medication-Etoposide-Example",
    "display" : "etoposide (VEPESID) chemo IVPB"
  },
  "subject" : {
    "reference" : "Patient/PatientExample6"
  },
  "authoredOn" : "2020-07-21T14:17:00Z",
  "requester" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }],
    "display" : "unknown"
  },
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
  "dosageInstruction" : [{
    "text" : "68 mg (100 mg/m2 x 0.68 m2 Treatment plan actual BSA), Intravenous, for 60 Minutes, Every 24 hours, First dose on Tue 11/19/13 at 0000, For 5 doses\nGive after CISplatin and  mannitol.",
    "timing" : {
      "repeat" : {
        "boundsPeriod" : {
          "start" : "2020-07-22T16:58:05Z",
          "end" : "2020-07-22T16:58:05Z"
        },
        "count" : 5,
        "duration" : 60,
        "durationUnit" : "min",
        "frequency" : 1,
        "period" : 24,
        "periodUnit" : "h"
      },
      "code" : {
        "text" : "Every 24 hours"
      }
    },
    "asNeededBoolean" : false,
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "418114005",
        "display" : "Intravenous central route (qualifier value)"
      }]
    },
    "doseAndRate" : [{
      "type" : {
        "text" : "admin-amount"
      },
      "doseQuantity" : {
        "value" : 68,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    },
    {
      "type" : {
        "text" : "ordered"
      },
      "doseQuantity" : {
        "value" : 100,
        "unit" : "milligram per square meter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/m2"
      }
    }]
  }]
}

```
