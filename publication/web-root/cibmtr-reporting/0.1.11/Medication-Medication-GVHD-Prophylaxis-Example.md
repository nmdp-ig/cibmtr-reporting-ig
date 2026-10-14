# Medication-GVHD-Prophylaxis-Example - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-GVHD-Prophylaxis-Example**

## Example Medication: Medication-GVHD-Prophylaxis-Example

Profile: [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.md)

Security Label: 

**code**: cyclosporine injection

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | cyclosporine injection | 50 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-GVHD-Prophylaxis-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-gvhd-prophylaxis-medication"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1156186",
      "display" : "cyclosporine Injectable Product"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1732364",
      "display" : "cyclosporine Injection"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "1732366",
      "display" : "cyclosporine Injection [Sandimmune]"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "212844",
      "display" : "5 ML cyclosporine 50 MG/ML Injection [Sandimmune]"
    }],
    "text" : "cyclosporine injection"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1156186",
        "display" : "cyclosporine Injectable Product"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1732364",
        "display" : "cyclosporine Injection"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1732366",
        "display" : "cyclosporine Injection [Sandimmune]"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "212844",
        "display" : "5 ML cyclosporine 50 MG/ML Injection [Sandimmune]"
      }],
      "text" : "cyclosporine injection"
    },
    "strength" : {
      "numerator" : {
        "value" : 50,
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
