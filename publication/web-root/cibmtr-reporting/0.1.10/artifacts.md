# Artifacts Summary - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CIBMTR Additional Drugs in Peri-Transplant Period](StructureDefinition-cibmtr-additional-peri-transplant-medication.md) | CIBMTR Additional Drugs Given in the Peri-Transplant Period. Drugs may be given during the peri-transplant period to prevent transplant-related complications, such as liver injuries or to facilitate engraftment. |
| [CIBMTR Cytogenetics Profile](StructureDefinition-cibmtr-cytogenetics.md) | CIBMTR Cytogenetics Profile to capture ISCN |
| [CIBMTR GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.md) | CIBMTR GVHD Prophylaxis Medication |
| [CIBMTR Medication (us-core)](StructureDefinition-cibmtr-medication.md) | CIBMTR Medication (us-core) |
| [CIBMTR Medication Administration (mcode)](StructureDefinition-cibmtr-medication-administration.md) | CIBMTR Medication Administration (mcode) |
| [CIBMTR Medication Request (mcode)](StructureDefinition-cibmtr-medication-request.md) | CIBMTR Medication Request (mcode) |
| [CIBMTR Mobilizing Agents Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.md) | CIBMTR Mobilizing Agents (auto only) Medication |
| [CIBMTR Observation Laboratory Results Profile (us-core)](StructureDefinition-cibmtr-observation-lab.md) | CIBMTR Observation Laboratory Results Profile (us-core) |
| [CIBMTR Observation Laboratory Results: Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md) | CIBMTR Observation Laboratory Results: Priority Variables |
| [CIBMTR Patient Profile (us-core)](StructureDefinition-cibmtr-patient.md) | CIBMTR Patient Profile for CRID assignment (us-core) |
| [CIBMTR Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.md) | CIBMTR Planned Post-HCT Disease Therapy Medication |
| [CIBMTR Prep Regimen Medication](StructureDefinition-cibmtr-prep-regimen-medication.md) | CIBMTR Pre-HCT Preparative Regimen (Conditioning) Medication |
| [CIBMTR Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.md) | CIBMTR Prior Exposure: Potential Study Eligibility Medication |
| [CIBMTR Vital Signs Results Profile (US Core)](StructureDefinition-cibmtr-vital-signs.md) |  |
| [CIBMTR Vital Signs-Height Profile (us-core)](StructureDefinition-cibmtr-vital-signs-height.md) | CIBMTR Vital Signs-Height Profile (us-core) |
| [CIBMTR Vital Signs-Weight Profile (us-core)](StructureDefinition-cibmtr-vital-signs-weight.md) | CIBMTR Vital Signs-Weight Profile (us-core) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Auto Differential panel - Blood (57023-4)](ValueSet-auto-differential-blood-vs.md) | Auto Differential panel - Blood (57023-4) |
| [CBC W Auto Differential panel - Blood (57021-8)](ValueSet-cbc-w-auto-differential-blood-vs.md) | CBC W Auto Differential panel - Blood (57021-8) |
| [CBC W Differential panel, method unspecified - Blood (69742-5)](ValueSet-cbc-w-differential-unspecified-blood-vs.md) | CBC W Differential panel, method unspecified - Blood (69742-5) |
| [CBC W Ordered Manual Differential panel - Blood (57782-5)](ValueSet-cbc-w-ordered-manual-differential-blood-vs.md) | CBC W Ordered Manual Differential panel - Blood (57782-5) |
| [CBC panel - Blood by Automated count (58410-2)](ValueSet-cbc-blood-automated-vs.md) | CBC panel - Blood by Automated count (58410-2) |
| [CIBMTR Patient Ancestry Value Set](ValueSet-patient.md) | US Core Race Categories (Intensional). 1. This value set is used by me |
| [CIBMTR Priority Variables Value Set (FY21)](ValueSet-cibmtr-priority-variables-2021.md) | Priority Variables for CIBMTR (FY21) |
| [CIBMTR Priority Variables Value Set (FY22)](ValueSet-cibmtr-priority-variables-2022.md) | Priority Variables for CIBMTR (FY22) |
| [CIBMTR Priority Variables Value Set for Epic App (FY21)](ValueSet-cibmtr-priority-variables-epic-2021.md) | Priority Variables for Epic CIBMTR Reporting App (FY21) |
| [CIBMTR Vital Signs Concept Set](ValueSet-cibmtr-cs-vitalsigns.md) | CIBMTR Vital Signs Concept Set |
| [CIBMTR Vital Signs Value Set](ValueSet-vital-signs.md) | CIBMTR Vital Signs Value Set |
| [Differential panel, method unspecified - Blood (69738-3)](ValueSet-differential-unspecified-blood-vs.md) | Differential panel, method unspecified - Blood (69738-3) |
| [Disorders of hematopoietic structure](ValueSet-hematopoietic-disorder-vs.md) | SNOMED: Disorders of hematopoietic structure |
| [Erythrocyte morphology panel - Blood (58408-6)](ValueSet-erythrocyte-morphology-blood-vs.md) | Erythrocyte morphology panel - Blood (58408-6) |
| [GVHD ICD-10 Codes](ValueSet-gvhd-icd10-codes.md) | GVHD ICD-10 Codes |
| [GVHD SNOMED CT Codes](ValueSet-gvhd-sct-codes.md) | GVHD SNOMED CT Codes |
| [GVHD Type Value Set](ValueSet-gvhd-all-valueset.md) | Permissible values for types of Graft vs Host Disease, from SNOMED CT and ICD-10 |
| [Leukocyte morphology panel - Blood (58407-8)](ValueSet-leukocyte-morphology-blood-vs.md) | Leukocyte morphology panel - Blood (58407-8) |
| [Manual Differential panel - Blood (24318-8)](ValueSet-manual-differential-blood-vs.md) | Manual Differential panel - Blood (24318-8) |
| [Platelet morphology panel - Blood (58406-0)](ValueSet-platelet-morphology-blood-vs.md) | Platelet morphology panel - Blood (58406-0) |
| [Presence Answer List](ValueSet-presence-valueset.md) | Permissible values for presence |
| [RxNorm - Additional Drugs in Peri-Transplant Period](ValueSet-med-addition-peri-transplant-vs.md) | RxNorm codes for Additional Drugs in Peri-Transplant Period |
| [RxNorm - Alemtuzumab](ValueSet-med-alemtuzumab-vs.md) | RxNorm codes for Alemtuzumab |
| [RxNorm - All of Form 2400](ValueSet-med-all-form2400-vs.md) | RxNorm codes for all of Form 2400 |
| [RxNorm - Anti-Thymocyte Globulin](ValueSet-med-anti-thymocyte-globulin-vs.md) | RxNorm codes for Anti-Thymocyte Globulin |
| [RxNorm - Bortezomib](ValueSet-med-bortezomib-vs.md) | RxNorm codes for Bortezomib |
| [RxNorm - Busulfan](ValueSet-med-busulfan-vs.md) | RxNorm codes for Busulfan |
| [RxNorm - Carmustine](ValueSet-med-carmustine-vs.md) | RxNorm codes for Carmustine |
| [RxNorm - Cyclophosphamide](ValueSet-med-cyclophosphamide-vs.md) | RxNorm codes for Cyclophosphamide |
| [RxNorm - Cytarabine](ValueSet-med-cytarabine-vs.md) | RxNorm codes for Cytarabine |
| [RxNorm - Defibrotide](ValueSet-med-defibrotide-vs.md) | RxNorm codes for Defibrotide |
| [RxNorm - Etoposide](ValueSet-med-etoposide-vs.md) | RxNorm codes for Etoposide |
| [RxNorm - Fludarabine](ValueSet-med-fludarabine-vs.md) | RxNorm codes for Fludarabine |
| [RxNorm - GVHD Prophylaxis](ValueSet-med-gvhd-prophylaxis-vs.md) | RxNorm codes for GVHD Prophylaxis |
| [RxNorm - Melphalan](ValueSet-med-melphalan-vs.md) | RxNorm codes for Melphalan |
| [RxNorm - Mobilizing Agents (auto only)](ValueSet-med-mobilizing-agents-vs.md) | RxNorm codes for Mobilizing Agents (auto only) |
| [RxNorm - Post-HCT Disease Therapy Planned](ValueSet-med-post-hct-disease-therapy-planned-vs.md) | RxNorm codes for Post-HCT Disease Therapy Planned |
| [RxNorm - Prep Regimen](ValueSet-med-prep-regimen-vs.md) | RxNorm codes for Prep Regimen |
| [RxNorm - Prior Exposure: Potential Study Eligibility](ValueSet-med-prior-exposure-vs.md) | Prior Exposure: Potential Study Eligibility |
| [RxNorm - Rituximab](ValueSet-med-rituximab-vs.md) | RxNorm codes for Rituximab |
| [RxNorm - Thiotepa](ValueSet-med-thiotepa-vs.md) | RxNorm codes for Thiotepa |
| [RxNorm - Treosulfan](ValueSet-med-treosulfan-vs.md) | RxNorm codes for Treosulfan |
| [RxNorm - Ursodiol](ValueSet-med-ursodiol-vs.md) | RxNorm codes for Ursodiol |
| [SNOMED Myelodysplastic Diseases](ValueSet-snomed-myelodysplastic-diseases-vs.md) | The myelodysplastic syndromes (MDS) are a group of clonal hematopoietic stem cell diseases characterized by cytopenia(s), dysplasia (abnormal growth or development leading to an alteration in size, shape, and organization of the cell) in one or more of the major myeloid cell lines (WBC, RBC, and/or platelets), ineffective hematopoiesis, and an increased risk of developing acute myelogenous leukemia (AML). MDS occurs primarily in older adults, with a median age of 70 years. The majority of recipients present with symptoms related to cytopenias. Most recipients present with anemia requiring RBC transfusions. |
| [Smear morphology panel - Blood (34994-4)](ValueSet-smear-morphology-blood-vs.md) | Smear morphology panel - Blood (34994-4) |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ABOBloodGroupObservationLOINC](Observation-ABOBloodGroupObservationLOINC.md) | ABO group [Type] in Blood (883-9) with LOINC answer |
| [ABOBloodGroupObservationSNOMED](Observation-ABOBloodGroupObservationSNOMED.md) | ABO group [Type] in Blood (883-9) with SNOMED answer |
| [ABORhObservationLOINC](Observation-ABORhObservationLOINC.md) | ABO and Rh group [Type] in Blood (882-1) with LOINC answer |
| [ABORhObservationSNOMED](Observation-ABORhObservationSNOMED.md) | ABO and Rh group [Type] in Blood (882-1) with SNOMED CT answer |
| [AlbuminObservation](Observation-AlbuminObservation.md) | Albumin [Mass/volume] in Serum or Plasma |
| [BasophilsObservation](Observation-BasophilsObservation.md) | Basophils/100 leukocytes in Blood |
| [BodyHeight](Observation-BodyHeight.md) | Body Height (8302-2) |
| [BodyWeight](Observation-BodyWeight.md) | Body Weight (29463-7) |
| [CMVDNAViralLoadCopiesmL](Observation-CMVDNAViralLoadCopiesmL.md) | Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection (49349-4) |
| [CMVDNAViralLoadIUmL](Observation-CMVDNAViralLoadIUmL.md) | Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection (72493-0) |
| [CMVIgAbPresenceSNOMED](Observation-CMVIgAbPresenceSNOMED.md) | Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with SNOMED CT answer |
| [CMVIgGAbPresenceLOINC](Observation-CMVIgGAbPresenceLOINC.md) | Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with LOINC answer |
| [CMVIgMAbPresenceLOINC](Observation-CMVIgMAbPresenceLOINC.md) | Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with LOINC answer |
| [CMVIgMAbPresenceSNOMED](Observation-CMVIgMAbPresenceSNOMED.md) | Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with SNOMED answer |
| [Cytogenetics-Example-1](Observation-Cytogenetics-Example-1.md) | Example of ISCN report |
| [EosinophilsObservation](Observation-EosinophilsObservation.md) | Eosinophils observation, #/volume in Blood |
| [HemoglobinObservation](Observation-HemoglobinObservation.md) | Hemoglobin [Mass/volume] in Blood |
| [LeukocytesObservation](Observation-LeukocytesObservation.md) | Leukocytes observation |
| [Medication-Cyclophosphamide-Example](Medication-Medication-Cyclophosphamide-Example.md) | Medication - Cyclophosphamide, 1 G injection |
| [Medication-Etoposide-Example](Medication-Medication-Etoposide-Example.md) | Medication - Etoposide (Vepesid) chemo IBPB, 20MG/ML |
| [Medication-GVHD-Prophylaxis-Example](Medication-Medication-GVHD-Prophylaxis-Example.md) | Medication - GVHD Prophylaxis Example - Cyclosporine |
| [Medication-Mobilizing-Agent-Example](Medication-Medication-Mobilizing-Agent-Example.md) | Medication - Mobilizing Agents Example - Pegfilgrastim |
| [Medication-Peri-Transplant-Example](Medication-Medication-Peri-Transplant-Example.md) | Medication - Additional Peri-Transplant Example - Anti-Thymocyte gGobulin |
| [Medication-Post-HCT-Disease-Therapy-Example](Medication-Medication-Post-HCT-Disease-Therapy-Example.md) | Medication - Post-HCT Disease Therapy Planned Example - Blinatumomab |
| [Medication-Prep-Regimen-Example](Medication-Medication-Prep-Regimen-Example.md) | Medication - Pre-HCT Preparatoive Regimen (Conditioning) Example - Pegfilgrastim |
| [Medication-PriorExposure-Example](Medication-Medication-PriorExposure-Example.md) | Medication - Prior Exposure: Potential Study Eligibility Example - Mogamulizumab |
| [MedicationAdministration-Example1](MedicationAdministration-MedicationAdministration-Example1.md) | Medication - Medication Administration example using medicationReference - Etoposide |
| [MedicationAdministration-Example2](MedicationAdministration-MedicationAdministration-Example2.md) | Medication - Medication Administration example using medicationCodeableConcept - Etoposide |
| [MedicationRequest-Etoposide-Example](MedicationRequest-MedicationRequest-Etoposide-Example.md) | Medication Request for Etoposide (Vepesid) chemo IBPB, 20MG/ML |
| [MetamyelocytesObservation](Observation-MetamyelocytesObservation.md) | Metamyelocytes [Presence] in Blood |
| [NeutrophilsObservation](Observation-NeutrophilsObservation.md) | Neutrophils [#/volume] in Cord blood |
| [PatientExample1](Patient-PatientExample1.md) | Patient with CIBMTR CRID |
| [PatientExample2](Patient-PatientExample2.md) | example using CIBMTR center number |
| [PatientExample3](Patient-PatientExample3.md) | Patient with MRN and CRID, Race=White, Ethnicity=Unknown |
| [PatientExample4](Patient-PatientExample4.md) | Patient with CRID and MRN, Race=Black or African American, Ethnicity=Unknown |
| [PatientExample5](Patient-PatientExample5.md) | Patient with CRID & MRN, Race=Mixed, Ethnicity=Not Hispanic or Latino |
| [PatientExample6](Patient-PatientExample6.md) | Patient with CIBMTR CRID |

