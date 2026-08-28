# Medication-Etoposide-Example - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-Etoposide-Example**

## Example Medication: Medication-Etoposide-Example

Profile: [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.md)

Security Label: 

**code**: ETOPOSIDE 20 MG/ML IV SOLN

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | ETOPOSIDE 20 MG/ML IV SOLN | 20 milligram per milliliter (Details: UCUM codemg/ml = 'mg/ml')/20 milligram per milliliter (Details: UCUM codemg/ml = 'mg/ml') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-Etoposide-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "code" : {
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
  "ingredient" : [{
    "itemCodeableConcept" : {
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
    "strength" : {
      "numerator" : {
        "value" : 20,
        "unit" : "milligram per milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/ml"
      },
      "denominator" : {
        "value" : 20,
        "unit" : "milligram per milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/ml"
      }
    }
  }]
}

```
