# Medication-Prep-Regimen-Example - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-Prep-Regimen-Example**

## Example Medication: Medication-Prep-Regimen-Example

Profile: [CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

**code**: cyclophosphamide

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | cyclophosphamide | 50 milligram(Details: UCUM codemg = 'mg')/50 milligram(Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-Prep-Regimen-Example",
  "meta" : {
    "profile" : [
      "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-prep-regimen-medication"
    ],
    "security" : [
      {
        "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
        "code" : "rc_99999",
        "display" : "99999 My Transplant Center"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "3002",
        "display" : "cyclophosphamide"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1437967",
        "display" : "cyclophosphamide Oral Capsule"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1437969",
        "display" : "cyclophosphamide 50 MG Oral Capsule"
      }
    ],
    "text" : "cyclophosphamide"
  },
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "3002",
            "display" : "cyclophosphamide"
          },
          {
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "1437967",
            "display" : "cyclophosphamide Oral Capsule"
          },
          {
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "1437969",
            "display" : "cyclophosphamide 50 MG Oral Capsule"
          }
        ],
        "text" : "cyclophosphamide"
      },
      "strength" : {
        "numerator" : {
          "value" : 50,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 50,
          "unit" : "milligram",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    }
  ]
}

```
