# Medication-Post-HCT-Disease-Therapy-Example - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-Post-HCT-Disease-Therapy-Example**

## Example Medication: Medication-Post-HCT-Disease-Therapy-Example

Profile: [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.md)

Security Label: 

**code**: blinatumomab

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | blinatumomab | 0.035 milligram (Details: UCUM codemg = 'mg')/0.035 milligram (Details: UCUM codemg = 'mg') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-Post-HCT-Disease-Therapy-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-post-hct-disease-therapy-planned-medication"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1597258",
      "display" : "blinatumomab"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1597260",
      "display" : "blinatumomab Injectable Product"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1597262",
      "display" : "blinatumomab 0.035 MG Injection"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1597267",
      "display" : "blinatumomab 0.035 MG Injection [Blincyto]"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1651249",
      "display" : "blinatumomab 0.035 MG"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1651250",
      "display" : "blinatumomab Injection"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1651252",
      "display" : "blinatumomab 0.035 MG [Blincyto]"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1651253",
      "display" : "blinatumomab Injection [Blincyto]"
    }],
    "text" : "blinatumomab"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1597258",
        "display" : "blinatumomab"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1597260",
        "display" : "blinatumomab Injectable Product"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1597262",
        "display" : "blinatumomab 0.035 MG Injection"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1597267",
        "display" : "blinatumomab 0.035 MG Injection [Blincyto]"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1651249",
        "display" : "blinatumomab 0.035 MG"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1651250",
        "display" : "blinatumomab Injection"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1651252",
        "display" : "blinatumomab 0.035 MG [Blincyto]"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1651253",
        "display" : "blinatumomab Injection [Blincyto]"
      }],
      "text" : "blinatumomab"
    },
    "strength" : {
      "numerator" : {
        "value" : 0.035,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 0.035,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }
  }]
}

```
