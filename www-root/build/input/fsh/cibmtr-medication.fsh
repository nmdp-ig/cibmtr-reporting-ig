Profile:        CIBMTR_Medication
Parent:         us-core-medication
Id:             cibmtr-medication
Title:          "CIBMTR Medication (us-core)"
Description:    "CIBMTR Medication (us-core)"
* insert MetaSecurityRules

// -------------------------------------------------------------------------------- 

Profile:        CIBMTR_MedicationAdministration
Parent:         mcode-cancer-related-medication-administration 
Id:             cibmtr-medication-administration
Title:          "CIBMTR Medication Administration (mcode)"
Description:    "CIBMTR Medication Administration (mcode)"
* insert MetaSecurityRules

Instance: MedicationAdministration-Example1
InstanceOf: cibmtr-medication-administration
Description: "Medication - Medication Administration example using medicationReference - Etoposide"
Usage: #example
* insert MetaSecurityExample
* status = #completed
* subject = Reference(PatientExample6)
* effectiveDateTime = "2020-07-22T16:58:05Z"
* reasonCode
  * coding[+] = $SCT#363346000 "Malignant neoplastic disease (disorder)"
  * coding[+] = $ICD10#C80.1 "Malignant (primary) neoplasm, unspecified"
  * text = "Cancer (CMS/HCC)"
* request = Reference(MedicationRequest-Etoposide-Example)
* medicationReference = Reference(Medication-Etoposide-Example)
* dosage
  * dose
    * value = 73
    * unit = "milligram"
    * system = $UCUM
    * code = #mg
  * route = $SCT#47625008 "Intravenous route"
  * method = $SCT#422145002 "Inject - dosing instruction imperative (qualifier value)"

Instance: MedicationAdministration-Example2
InstanceOf: cibmtr-medication-administration
Description: "Medication - Medication Administration example using medicationCodeableConcept - Etoposide"
Usage: #example
* insert MetaSecurityExample
* status = #completed
* subject = Reference(PatientExample6)
* effectiveDateTime = "2020-07-22T16:58:05Z"
* reasonCode
  * coding[+] = $SCT#363346000 "Malignant neoplastic disease (disorder)"
  * coding[+] = $ICD10#C80.1 "Malignant (primary) neoplasm, unspecified"
  * text = "Cancer (CMS/HCC)"
* request = Reference(MedicationRequest-Etoposide-Example)
* medicationCodeableConcept
  * coding[+] = $RXN#4179 "etoposide"
  * coding[+] = $RXN#310248 "etoposide 20 MG/ML Injectable Solution"
  * coding[+] = $RXN#362972 "etoposide Injectable Solution [Vepesid]"
  * coding[+] = $RXN#206832 "etoposide 20 MG/ML Injectable Solution [Vepesid]"
  * text = "ETOPOSIDE 20 MG/ML IV SOLN"
* dosage
  * dose
    * value = 73
    * unit = "milligram"
    * system = $UCUM
    * code = #mg
  * route = $SCT#47625008 "Intravenous route"
  * method = $SCT#422145002 "Inject - dosing instruction imperative (qualifier value)"

// -------------------------------------------------------------------------------- 

Profile:        CIBMTR_MedicationRequest
Parent:         mcode-cancer-related-medication-request
Id:             cibmtr-medication-request
Title:          "CIBMTR Medication Request (mcode)"
Description:    "CIBMTR Medication Request (mcode)"
* insert MetaSecurityRules

// -------------------------------------------------------------------------------- 


// Profile:        CIBMTR_MedicationDispense
// Parent:         MedicationDispense
// Id:             cibmtr-medication-dispense
// Title:          "CIBMTR Medication Dispense"
// Description:    "CIBMTR Medication Dispense"
// * insert MetaSecurityRules

// -------------------------------------------------------------------------------- 

Profile:        CIBMTR_MobilizingAgentMedication
Parent:         cibmtr-medication
Id:             cibmtr-mobilizing-agent-medication
Title:          "CIBMTR Mobilizing Agents Medication"
Description:    "CIBMTR Mobilizing Agents (auto only) Medication"
* code.coding from RxNormMobilizingAgentsVS (extensible)


Instance: Medication-Mobilizing-Agent-Example
InstanceOf: cibmtr-mobilizing-agent-medication
Description: "Medication - Mobilizing Agents Example - Pegfilgrastim"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#338036     "pegfilgrastim"
  * coding[+] = $RXN#350977     "pegfilgrastim 10 MG/ML"
  * coding[+] = $RXN#1161380    "pegfilgrastim Injectable Product"
  * text = "pegfilgrastim"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#338036	"pegfilgrastim"
    * coding[+] = $RXN#350977	"pegfilgrastim 10 MG/ML"
    * coding[+] = $RXN#1161380	"pegfilgrastim Injectable Product"
    * text = "pegfilgrastim 10 mg/mL"
  * strength
    * numerator
      * value = 10
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
    * denominator
      * value = 1
      * unit = "milliliter"
      * system = $UCUM
      * code = #mL

// -------------------------------------------------------------------------------- 

Profile:        CIBMTR_PrepRegimenMedication
Parent:         cibmtr-medication
Id:             cibmtr-prep-regimen-medication
Title:          "CIBMTR Prep Regimen Medication"
Description:    "CIBMTR Pre-HCT Preparative Regimen (Conditioning) Medication"
* code.coding from RxNormPrepRegimenVS (extensible)


Instance: Medication-Prep-Regimen-Example
InstanceOf: cibmtr-prep-regimen-medication
Description: "Medication - Pre-HCT Preparatoive Regimen (Conditioning) Example - Pegfilgrastim"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#3002	    "cyclophosphamide"
  * coding[+] = $RXN#1437967	"cyclophosphamide Oral Capsule"
  * coding[+] = $RXN#1437969	"cyclophosphamide 50 MG Oral Capsule"
  * text = "cyclophosphamide"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#3002	    "cyclophosphamide"
    * coding[+] = $RXN#1437967	"cyclophosphamide Oral Capsule"
    * coding[+] = $RXN#1437969	"cyclophosphamide 50 MG Oral Capsule"
    * text = "cyclophosphamide"
  * strength
    * numerator
      * value = 50
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
    * denominator
      * value = 50
      * unit = "milligram"
      * system = $UCUM
      * code = #mg

// -------------------------------------------------------------------------------- 


Profile:        CIBMTR_AdditionalPeriTransplantMedication
Parent:         cibmtr-medication
Id:             cibmtr-additional-peri-transplant-medication
Title:          "CIBMTR Additional Drugs in Peri-Transplant Period"
Description:    "CIBMTR Additional Drugs Given in the Peri-Transplant Period. Drugs may be given during the peri-transplant period to prevent transplant-related complications, such as liver injuries or to facilitate engraftment."
* code.coding from RxNormAdditionalPeriTransplantVS (extensible)


Instance: Medication-Peri-Transplant-Example
InstanceOf: cibmtr-additional-peri-transplant-medication
Description: "Medication - Additional Peri-Transplant Example - Anti-Thymocyte gGobulin"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#2282515	"lymphocyte immune globulin, anti-thymocyte globulin Injectable Product"
  * coding[+] = $RXN#2282516	"lymphocyte immune globulin, anti-thymocyte globulin Injection"
  * coding[+] = $RXN#2282518	"lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML [ATGAM]"
  * coding[+] = $RXN#2282519	"lymphocyte immune globulin, anti-thymocyte globulin Injection [ATGAM]"
  * text = "anti-thymocyte globulin Injection"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#2282515	"lymphocyte immune globulin, anti-thymocyte globulin Injectable Product"
    * coding[+] = $RXN#2282516	"lymphocyte immune globulin, anti-thymocyte globulin Injection"
    * coding[+] = $RXN#2282518	"lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML [ATGAM]"
    * coding[+] = $RXN#2282519	"lymphocyte immune globulin, anti-thymocyte globulin Injection [ATGAM]"
    * text = "anti-thymocyte globulin Injection"
  * strength
    * numerator
      * value = 50
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
    * denominator
      * value = 1
      * unit = "milliliter"
      * system = $UCUM
      * code = #mL

// -------------------------------------------------------------------------------- 


Profile:        CIBMTR_GVHDProphylaxisMedication
Parent:         cibmtr-medication
Id:             cibmtr-gvhd-prophylaxis-medication
Title:          "CIBMTR GVHD Prophylaxis Medication"
Description:    "CIBMTR GVHD Prophylaxis Medication"
* code.coding from RxNormGVHDProphylaxisVS (extensible)

Instance: Medication-GVHD-Prophylaxis-Example
InstanceOf: cibmtr-gvhd-prophylaxis-medication
Description: "Medication - GVHD Prophylaxis Example - Cyclosporine"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#1156186	"cyclosporine Injectable Product"
  * coding[+] = $RXN#1732364	"cyclosporine Injection"
  * coding[+] = $RXN#1732366	"cyclosporine Injection [Sandimmune]"
  * coding[+] = $RXN#212844	    "5 ML cyclosporine 50 MG/ML Injection [Sandimmune]"
  * text = "cyclosporine injection"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#1156186	"cyclosporine Injectable Product"
    * coding[+] = $RXN#1732364	"cyclosporine Injection"
    * coding[+] = $RXN#1732366	"cyclosporine Injection [Sandimmune]"
    * coding[+] = $RXN#212844   "5 ML cyclosporine 50 MG/ML Injection [Sandimmune]"
    * text = "cyclosporine injection"
  * strength
    * numerator
      * value = 50
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
    * denominator
      * value = 1
      * unit = "milliliter"
      * system = $UCUM
      * code = #mL

// -------------------------------------------------------------------------------- 


Profile:        CIBMTR_PostHCTDiseaseTherapyPlannedMedication
Parent:         cibmtr-medication
Id:             cibmtr-post-hct-disease-therapy-planned-medication
Title:          "CIBMTR Planned Post-HCT Disease Therapy Medication"
Description:    "CIBMTR Planned Post-HCT Disease Therapy Medication"
* code.coding from RxNormPostHCTDiseaseTherapyPlannedVS (extensible)


Instance: Medication-Post-HCT-Disease-Therapy-Example
InstanceOf: cibmtr-post-hct-disease-therapy-planned-medication
Description: "Medication - Post-HCT Disease Therapy Planned Example - Blinatumomab"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#1597258	"blinatumomab"
  * coding[+] = $RXN#1597260	"blinatumomab Injectable Product"
  * coding[+] = $RXN#1597262	"blinatumomab 0.035 MG Injection"
  * coding[+] = $RXN#1597267	"blinatumomab 0.035 MG Injection [Blincyto]"
  * coding[+] = $RXN#1651249	"blinatumomab 0.035 MG"
  * coding[+] = $RXN#1651250	"blinatumomab Injection"
  * coding[+] = $RXN#1651252	"blinatumomab 0.035 MG [Blincyto]"
  * coding[+] = $RXN#1651253	"blinatumomab Injection [Blincyto]"
  * text = "blinatumomab"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#1597258	"blinatumomab"
    * coding[+] = $RXN#1597260	"blinatumomab Injectable Product"
    * coding[+] = $RXN#1597262	"blinatumomab 0.035 MG Injection"
    * coding[+] = $RXN#1597267	"blinatumomab 0.035 MG Injection [Blincyto]"
    * coding[+] = $RXN#1651249	"blinatumomab 0.035 MG"
    * coding[+] = $RXN#1651250	"blinatumomab Injection"
    * coding[+] = $RXN#1651252	"blinatumomab 0.035 MG [Blincyto]"
    * coding[+] = $RXN#1651253	"blinatumomab Injection [Blincyto]"
    * text = "blinatumomab"
  * strength
    * numerator
      * value = 0.035
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
    * denominator
      * value = 0.035
      * unit = "milligram"
      * system = $UCUM
      * code = #mg

// -------------------------------------------------------------------------------- 

Profile:        CIBMTR_PriorExposureMedication
Parent:         cibmtr-medication
Id:             cibmtr-prior-exposure-medication
Title:          "CIBMTR Prior Exposure Medication"
Description:    "CIBMTR Prior Exposure: Potential Study Eligibility Medication"
* code.coding from RxNormPriorExposureVS (extensible)


Instance: Medication-PriorExposure-Example
InstanceOf: cibmtr-prior-exposure-medication
Description: "Medication - Prior Exposure: Potential Study Eligibility Example - Mogamulizumab"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#2054068	"mogamulizumab"
  * coding[+] = $RXN#2054084	"mogamulizumab Injection [Poteligeo]"
  * coding[+] = $RXN#2054086	"5 ML mogamulizumab-kpkc 4 MG/ML Injection [Poteligeo]"
  * text = "mogamulizumab"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#2054068	"mogamulizumab"
    * coding[+] = $RXN#2054084	"mogamulizumab Injection [Poteligeo]"
    * coding[+] = $RXN#2054086	"5 ML mogamulizumab-kpkc 4 MG/ML Injection [Poteligeo]"
    * text = "mogamulizumab"
  * strength
    * numerator
      * value = 4
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
    * denominator
      * value = 0.035
      * unit = "milliliter"
      * system = $UCUM
      * code = #mL

// -------------------------------------------------------------------------------- 

Instance: Medication-Cyclophosphamide-Example
InstanceOf: cibmtr-medication
Description: "Medication - Cyclophosphamide, 1 G injection"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#3002 "cyclophosphamide"
  * coding[+] = $RXN#1545988 "cyclophosphamide anhydrous"
  * coding[+] = $RXN#1734919 "cyclophosphamide 1000 MG Injection"
  * text = "CYCLOPHOSPHAMIDE 1 G IJ SOLR"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#3002 "cyclophosphamide"
    * coding[+] = $RXN#1545988 "cyclophosphamide anhydrous"
    * coding[+] = $RXN#1734919 "cyclophosphamide 1000 MG Injection"
    * text = "CYCLOPHOSPHAMIDE 1 G IJ SOLR"
  * strength
    * numerator
      * value = 1
      * unit = "gram"
      * system = $UCUM
      * code = #g
    * denominator
      * value = 1
      * unit = "gram"
      * system = $UCUM
      * code = #g

// -------------------------------------------------------------------------------- 

Instance: Medication-Etoposide-Example
InstanceOf: cibmtr-medication
Description: "Medication - Etoposide (Vepesid) chemo IBPB, 20MG/ML"
Usage: #example
* insert MetaSecurityExample
* code
  * coding[+] = $RXN#4179 "etoposide"
  * coding[+] = $RXN#310248 "etoposide 20 MG/ML Injectable Solution"
  * coding[+] = $RXN#362972 "etoposide Injectable Solution [Vepesid]"
  * coding[+] = $RXN#206832 "etoposide 20 MG/ML Injectable Solution [Vepesid]"
  * text = "ETOPOSIDE 20 MG/ML IV SOLN"
* ingredient
  * itemCodeableConcept
    * coding[+] = $RXN#4179 "etoposide"
    * coding[+] = $RXN#310248 "etoposide 20 MG/ML Injectable Solution"
    * coding[+] = $RXN#362972 "etoposide Injectable Solution [Vepesid]"
    * coding[+] = $RXN#206832 "etoposide 20 MG/ML Injectable Solution [Vepesid]"
    * text = "ETOPOSIDE 20 MG/ML IV SOLN"
  * strength
    * numerator
      * value = 20
      * unit = "milligram per milliliter"
      * system = $UCUM
      * code = #mg/ml
    * denominator
      * value = 20
      * unit = "milligram per milliliter"
      * system = $UCUM
      * code = #mg/ml


Instance: MedicationRequest-Etoposide-Example
InstanceOf: cibmtr-medication-request
Description: "Medication Request for Etoposide (Vepesid) chemo IBPB, 20MG/ML"
Usage: #example
* insert MetaSecurityExample
* subject = Reference(PatientExample6)
* status = #active
* intent = #order
* requester.display = "unknown"
* requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unknown
* medicationReference = Reference(Medication-Etoposide-Example)
* medicationReference.display = "etoposide (VEPESID) chemo IVPB"
* authoredOn = "2020-07-21T14:17:00Z"
* reasonCode
  * coding[+] = $SCT#363346000 "Malignant neoplastic disease (disorder)"
  * coding[+] = $ICD10#C80.1 "Malignant (primary) neoplasm, unspecified"
  * text = "Cancer (CMS/HCC)"
* dosageInstruction
  * text = "68 mg (100 mg/m2 x 0.68 m2 Treatment plan actual BSA), Intravenous, for 60 Minutes, Every 24 hours, First dose on Tue 11/19/13 at 0000, For 5 doses\nGive after CISplatin and  mannitol."
  * timing
    * repeat
      * boundsPeriod
        * start = "2020-07-22T16:58:05Z"
        * end = "2020-07-22T16:58:05Z"
      * count = 5
      * duration = 60
      * durationUnit = #min
      * frequency = 1
      * period = 24
      * periodUnit = #h
    * code.text = "Every 24 hours"
  * asNeededBoolean = false
  * route
    * coding[+] = $SCT#418114005 "Intravenous central route (qualifier value)"
  * doseAndRate[+]
    * type.text = "admin-amount"
    * doseQuantity
      * value = 68
      * unit = "milligram"
      * system = $UCUM
      * code = #mg
  * doseAndRate[+]
    * type.text = "ordered"
    * doseQuantity
      * value = 100
      * unit = "milligram per square meter"
      * system = $UCUM
      * code = #mg/m2

