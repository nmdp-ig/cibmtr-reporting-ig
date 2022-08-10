Profile:        CIBMTR_Medication
Parent:         us-core-medication
Id:             cibmtr-medication
Title:          "CIBMTR Medication (us-core)"
Description:    "CIBMTR Medication (us-core)"
* insert MetaSecurityRules


Profile:        CIBMTR_MedicationAdministration
Parent:         mcode-cancer-related-medication-administration 
Id:             cibmtr-medication-administration
Title:          "CIBMTR Medication Administration (mcode)"
Description:    "CIBMTR Medication Administration (mcode)"
* insert MetaSecurityRules


Profile:        CIBMTR_MedicationRequest
Parent:         mcode-cancer-related-medication-request
Id:             cibmtr-medication-request
Title:          "CIBMTR Medication Request (mcode)"
Description:    "CIBMTR Medication Request (mcode)"
* insert MetaSecurityRules


Profile:        CIBMTR_MedicationDispense
Parent:         MedicationDispense
Id:             cibmtr-medication-dispense
Title:          "CIBMTR Medication Dispense"
Description:    "CIBMTR Medication Dispense"
* insert MetaSecurityRules


Profile:        CIBMTR_MobilizingAgentMedication
Parent:         cibmtr-medication
Id:             cibmtr-mobilizing-agent-medication
Title:          "CIBMTR Mobilizing Agent Medication"
Description:    "CIBMTR Moblizing Agents (auto only) Medication"
* code.coding from RxNormMobilizingAgentsVS (extensible)


Profile:        CIBMTR_PrepRegimenMedication
Parent:         cibmtr-medication
Id:             cibmtr-prep-regimen-medication
Title:          "CIBMTR Prep Regimen Medication"
Description:    "CIBMTR Pre-HCT Preparative Regimen (Conditioning) Medication"
* code.coding from RxNormPrepRegimenVS (extensible)


Profile:        CIBMTR_AdditionalPeriTransplantMedication
Parent:         cibmtr-medication
Id:             cibmtr-additional-peri-transplant-medication
Title:          "CIBMTR Additional Drugs in Peri-Transplant Period"
Description:    "CIBMTR Additional Drugs Given in the Peri-Transplant Period. Drugs may be given during the peri-transplant period to prevent transplant-related complications, such as liver injuries or to facilitate engraftment."
* code.coding from RxNormAdditionalPeriTransplantVS (extensible)


Profile:        CIBMTR_GVHDProphylaxisMedication
Parent:         cibmtr-medication
Id:             cibmtr-gvhd-prophylaxis-medication
Title:          "CIBMTR GVHD Prophylaxis Medication"
Description:    "CIBMTR GVHD Prophylaxis Medication"
* code.coding from RxNormGVHDProphylaxisVS (extensible)


Profile:        CIBMTR_PostHCTDiseaseTherapyPlannedMedication
Parent:         cibmtr-medication
Id:             cibmtr-post-hct-disease-therapy-planned-medication
Title:          "CIBMTR Planned Post-HCT Disease Therapy Medication"
Description:    "CIBMTR Planned Post-HCT Disease Therapy Medication"
* code.coding from RxNormPostHCTDiseaseTherapyPlannedVS (extensible)


Profile:        CIBMTR_PrioExposureMedication
Parent:         cibmtr-medication
Id:             cibmtr-prior-exposure-medication
Title:          "CIBMTR Prior Exposure Medication"
Description:    "CIBMTR Prior Exposure: Potential Study Eligibility Medication"
* code.coding from RxNormPrioExposureVS (extensible)
