# Medication-Cyclophosphamide-Example - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-Cyclophosphamide-Example**

## Example Medication: Medication-Cyclophosphamide-Example

Profile: [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.md)

Security Label: 

**code**: CYCLOPHOSPHAMIDE 1 G IJ SOLR

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | CYCLOPHOSPHAMIDE 1 G IJ SOLR | 1 gram (Details: UCUM codeg = 'g')/1 gram (Details: UCUM codeg = 'g') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-Cyclophosphamide-Example",
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
      "code" : "3002",
      "display" : "cyclophosphamide"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1545988",
      "display" : "cyclophosphamide anhydrous"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1734919",
      "display" : "cyclophosphamide 1000 MG Injection"
    }],
    "text" : "CYCLOPHOSPHAMIDE 1 G IJ SOLR"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "3002",
        "display" : "cyclophosphamide"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1545988",
        "display" : "cyclophosphamide anhydrous"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1734919",
        "display" : "cyclophosphamide 1000 MG Injection"
      }],
      "text" : "CYCLOPHOSPHAMIDE 1 G IJ SOLR"
    },
    "strength" : {
      "numerator" : {
        "value" : 1,
        "unit" : "gram",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "gram",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      }
    }
  }]
}

```
