# Medication-Peri-Transplant-Example - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication-Peri-Transplant-Example**

## Example Medication: Medication-Peri-Transplant-Example

Profile: [CIBMTR Additional Drugs in Peri-Transplant Period](StructureDefinition-cibmtr-additional-peri-transplant-medication.md)

Security Label: 

**code**: anti-thymocyte globulin Injection

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | anti-thymocyte globulin Injection | 50 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "Medication-Peri-Transplant-Example",
  "meta" : {
    "profile" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-additional-peri-transplant-medication"],
    "security" : [{
      "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
      "code" : "rc_99999",
      "display" : "99999 My Transplant Center"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2282515",
      "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injectable Product"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2282516",
      "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2282518",
      "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML [ATGAM]"
    },
    {
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "code" : "2282519",
      "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection [ATGAM]"
    }],
    "text" : "anti-thymocyte globulin Injection"
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2282515",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injectable Product"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2282516",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2282518",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML [ATGAM]"
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "2282519",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection [ATGAM]"
      }],
      "text" : "anti-thymocyte globulin Injection"
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
