# Medication-Mobilizing-Agent-Example - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-Mobilizing-Agent-Example**

## Example Medication: Medication-Mobilizing-Agent-Example

Profile: [CIBMTR Mobilizing Agents Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.md)

Security Label: 

**code**: pegfilgrastim

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | pegfilgrastim 10 mg/mL | 10 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-Mobilizing-Agent-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-mobilizing-agent-medication"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "338036",
      "display" : "pegfilgrastim"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "350977",
      "display" : "pegfilgrastim 10 MG/ML"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1161380",
      "display" : "pegfilgrastim Injectable Product"
    }],
    "text" : "pegfilgrastim"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "338036",
        "display" : "pegfilgrastim"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "350977",
        "display" : "pegfilgrastim 10 MG/ML"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1161380",
        "display" : "pegfilgrastim Injectable Product"
      }],
      "text" : "pegfilgrastim 10 mg/mL"
    },
    "strength" : {
      "numerator" : {
        "value" : 10,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }]
}

```
