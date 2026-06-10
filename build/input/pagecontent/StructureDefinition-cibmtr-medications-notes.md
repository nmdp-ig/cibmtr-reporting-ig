#### `medicationReference` vs `medicationCodeableConcept`

MedicationRequest may reference a Medication resource through the `medicationReference` element. This has the form:
``` json
  "medicationReference" : {
    "reference" : "Medication/<resource Id>"
  }
```
This approach is useful when the same medication needs to be reused across multiple MedicationRequest resources or when the medication description is more complex than a single RxNorm code, such as medications containing multiple ingredients.

Alternatively, medication information may be represented using the `medicationCodeableConcept` element. In this case, medication codes are provided directly within the MedicationRequest resource. This approach is appropriate when the medication can be represented using one or more equivalent RxNorm codes, typically for medications with a single ingredient.

The following example shows multiple RxNorm codes representing equivalent medication concepts:

```json
  "medicationCodeableConcept" : {
    "coding" : [
      {
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
      }
    ],
    "text" : "ETOPOSIDE 20 MG/ML IV SOLN"
  }
```

#### `reasonCode`
MedicationRequest provides elements to describe the reason why a medication was requested. This information is often useful to CIBMTR for understanding the clinical context of the medication request.

Reason codes may be represented using SNOMED CT codes, ICD-10 codes, or both when the codes are clinically equivalent.

The following example shows equivalent SNOMED CT and ICD-10 reason codes:

```json
"reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "363346000",
          "display" : "Malignant neoplastic disease (disorder)"
        },
        {
          "system" : "http://hl7.org/fhir/sid/icd-10-cm",
          "code" : "C80.1",
          "display" : "Malignant (primary) neoplasm, unspecified"
        }
      ],
      "text" : "Cancer (CMS/HCC)"
    }
  ]
```

### Medication-related Artifacts

#### CIBMTR Medication-related Profiles
- [CIBMTR Medication Request (mcode)](StructureDefinition-cibmtr-medication-request.html)
- [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.html)


#### RxNorm ValueSets 

- [Mobilizing Agents (auto only)] - 203 concepts
- [Prep Regimen] - 501 concepts
- [Additional Drugs in Peri-Transplant Period] - 75 concepts
- [GVHD Prophylaxis] - 582 concepts
- [Post-HCT Disease Therapy Planned] - 491 concepts
- [Prior Exposure: Potential Study Eligibility] - 58 concepts
- [All meds in Form 2400] - 1737 concepts


#### Medication profiles that bind to these ValueSets:
- [CIBMTR Mobilizing Agent Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.html)
- [CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.html)
- [CIBMTR Additional Drugs in Peri-Transplant Period Medication](StructureDefinition-cibmtr-additional-peri-transplant-medication.html)
- [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.html) 
- [CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.html)
- [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.html)

### Examples

#### MedicationRequest
- [MedicationRequest-Etoposide-Example]\: Medication Request for Etoposide (Vepesid) chemo IBPB, 20MG/ML

#### Medication
- [Medication-Cyclophosphamide-Example]\: Cyclophosphamide, 1 G injection
- [Medication-Etoposide-Example]\: Etoposide (Vepesid) chemo IBPB, 20MG/ML
- [Medication-GVHD-Prophylaxis-Example]\: GVHD Prophylaxis - Cyclosporine
- [Medication-Mobilizing-Agent-Example]\: Mobilizing Agent - Pegfilgrastim
- [Medication-Peri-Transplant-Example]\: Additional Peri-Transplant - Anti-Thymocyte Gobulin
- [Medication-Post-HCT-Disease-Therapy-Example]\: Post-HCT Disease Therapy Planned - Blinatumomab
- [Medication-Prep-Regimen-Example]\:  Mobilizing Agent - Pegfilgrastim
- [Medication-PriorExposure-Example]\: Prior Exposure: Potential Study Eligibility - Mogamulizumab


{% include link-list.md %}
---