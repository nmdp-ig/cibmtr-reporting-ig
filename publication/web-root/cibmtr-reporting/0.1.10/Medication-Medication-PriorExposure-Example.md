# Medication-PriorExposure-Example - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-PriorExposure-Example**

## Example Medication: Medication-PriorExposure-Example

Profile: [CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.md)

Security Label: 

**code**: mogamulizumab

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | mogamulizumab | 4 milligram (Details: UCUM codemg = 'mg')/0.035 milliliter (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-PriorExposure-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-prior-exposure-medication"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2054068",
      "display" : "mogamulizumab"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2054084",
      "display" : "mogamulizumab Injection [Poteligeo]"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2054086",
      "display" : "5 ML mogamulizumab-kpkc 4 MG/ML Injection [Poteligeo]"
    }],
    "text" : "mogamulizumab"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2054068",
        "display" : "mogamulizumab"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2054084",
        "display" : "mogamulizumab Injection [Poteligeo]"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2054086",
        "display" : "5 ML mogamulizumab-kpkc 4 MG/ML Injection [Poteligeo]"
      }],
      "text" : "mogamulizumab"
    },
    "strength" : {
      "numerator" : {
        "value" : 4,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 0.035,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }]
}

```
