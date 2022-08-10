# Guidance: Medications

## Form 2400
Medication-related FHIR resource may be sent to the CIBMTR Direct FHIR API (see [R4 connection guide](Connection-Guide.html)). These profiles are derived from profiles found in the [US-Core](https://hl7.org/fhir/us/core/) or [mCode](https://hl7.org/fhir/us/mcode/) Implementation Guides. CIBMTR profiles add a requirement for the `meta.security` elements to identify your center, and often include bindings to ValueSets for RxNorm codes. They may also require elements previously tagged as optional in the original profiles.

### Medication-related profiles include
- [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.html)
- [CIBMTR Medication Request (mcode)](StructureDefinition-cibmtr-medication-request.html)
- [CIBMTR Medication Administration (mcode)](StructureDefinition-cibmtr-medication-administration.html)
  

### FHIR ValueSets have been created that describe the RxNorm codes for medications described in various sections in CIBMTR Form 2400. These include
- [Mobilizing Agents (auto only)](ValueSet-med-mobilizing-agents-vs.html) - 203 concepts
- [Prep Regimen](ValueSet-med-prep-regimen-vs.html) - 501 concepts
- [Additional Drugs in Peri-Transplant Period](ValueSet-med-addition-peri-transplant-vs.html) - 75 concepts
- [GVHD Prophylaxis](ValueSet-med-gvhd-prophylaxis-vs.html) - 582 concepts
- [Post-HCT Disease Therapy Planned](ValueSet-med-post-hct-disease-therapy-planned-vs.html) - 491 concepts
- [Prior Exposure: Potential Study Eligibility](ValueSet-med-prior-exposure-vs.html) - 58 concepts
- [All meds in Form 2400](ValueSet-med-all-form2400-vs.html) - 1737 concepts

Because RxNorm is updated every week, the bindings of the profiles to these valueSets is extensible to allow for new RxNorm codes that did not exist when these value sets were created.

### Medication profiles that bind to these ValueSets:
- [CIBMTR Mobilizing Agent Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.html)
- [CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.html)
- [CIBMTR Additional Drugs in Peri-Transplant Period Medication](StructureDefinition-cibmtr-additional-peri-transplant-medication.html)
- [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.html) 
- [CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.html)
- [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.html)

### Exmples
TBD