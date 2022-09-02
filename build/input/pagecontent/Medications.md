### Overview: Medication-related Profiles and ValueSets for CIBMTR
Medication-related FHIR resource may be sent to the CIBMTR Direct FHIR API (see [R4 connection guide](Connection-Guide-R4.html)). These profiles are derived from profiles found in the [US-Core](https://hl7.org/fhir/us/core/) or [mCode](https://hl7.org/fhir/us/mcode/) Implementation Guides. CIBMTR profiles add a requirement for the `meta.security` elements to identify your center, and often include bindings to ValueSets for RxNorm codes. They may also require elements previously tagged as optional in the original profiles.

Medication-related resources include Medication, MedicationRequest, and MedicationAdministration.
While MedicationRequest and MedicationAdministration are specific for a particular subject, the Medication resource is definitonal and can be reused for different instances, including for different subjects. See figure below

|![Figure 1](medications-1.png){: width="50%"} |
|:--:|
| <i>Figure 1: Relationships between different medication-related resources</i>|

#### `medicationReference` vs `medicationCodeableConcept`

Note that both MedicationAdministration and MedicationRequest can refer to a Medication resource through the `medicationReference` element. This has the form of
``` json
  "medicationReference" : {
    "reference" : "Medication/<resource Id>"
  }
```
This is useful when you want to be able to re-use the same medication multiple times, or if the medication description is more complex than a simple RxNorm code (e.g., contains multiple ingredients).

Alternative, you might also reference a medication via the `medicationCodeableConcept` element. In this case, if the medication can be described as a set of equivalent RxNorm codes (i.e., only one ingredient), the codes may be included inline in the MedicationAdministration or MedicationRequest. Here is an example with multiple RxNorm codes that are effectively equivalent: 

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
Both MedicationAdministration and MedciationRequest provide an element to describe the reason why a medication has been requested or administered. This is often useful to CIBMTR in understanding the context. Reason codes may be entered in as SNOMED or ICD-10 codes, or both if they are equivalent. For example,

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
- [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.html)
- [CIBMTR Medication Request (mcode)](StructureDefinition-cibmtr-medication-request.html)
- [CIBMTR Medication Administration (mcode)](StructureDefinition-cibmtr-medication-administration.html)
  

#### RxNorm ValueSets 

FHIR ValueSets have been created that describe the RxNorm codes for medications described in various sections in CIBMTR Form 2400. These include
- [Mobilizing Agents (auto only)](ValueSet-med-mobilizing-agents-vs.html) - 203 concepts
- [Prep Regimen](ValueSet-med-prep-regimen-vs.html) - 501 concepts
- [Additional Drugs in Peri-Transplant Period](ValueSet-med-addition-peri-transplant-vs.html) - 75 concepts
- [GVHD Prophylaxis](ValueSet-med-gvhd-prophylaxis-vs.html) - 582 concepts
- [Post-HCT Disease Therapy Planned](ValueSet-med-post-hct-disease-therapy-planned-vs.html) - 491 concepts
- [Prior Exposure: Potential Study Eligibility](ValueSet-med-prior-exposure-vs.html) - 58 concepts
- [All meds in Form 2400](ValueSet-med-all-form2400-vs.html) - 1737 concepts

Because RxNorm is updated every week, the bindings of the profiles to these valueSets is extensible to allow for new RxNorm codes that did not exist when these value sets were created.

#### Medication profiles that bind to these ValueSets:
- [CIBMTR Mobilizing Agent Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.html)
- [CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.html)
- [CIBMTR Additional Drugs in Peri-Transplant Period Medication](StructureDefinition-cibmtr-additional-peri-transplant-medication.html)
- [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.html) 
- [CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.html)
- [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.html)

### Examples

#### MedicationAdmintration
- [MedicationAdministration-Example1]\: Medication Administration example using `medicationReference` - Etoposide
- [MedicationAdministration-Example2]\: Medication Administration example using `medicationCodeableConcept` - Etoposide

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

#### Bundle of Medication-related Resources
- TBD

{% include link-list.md %}