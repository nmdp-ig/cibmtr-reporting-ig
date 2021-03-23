Profile:        CIBMTRObservationLab
Parent:         us-core-observation-lab 
Id:             cibmtr-observation-lab
Title:          "CIBMTR Observation Laboratory Results Profile (us-core)"
Description:    "CIBMTR Observation Laboratory Results Profile (us-core)"
* meta.security ^slicing.discriminator.type = #pattern
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #open
* meta.security ^slicing.description = "slicing on meta.security"
* meta.security contains
    TransplantCenter 1..1 MS
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code obeys sec-rc
* meta.security[TransplantCenter].code 1..1 
// * component ^slicing.discriminator.type = #pattern
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
// * component contains GVHD 0..1
// * component[GVHD].code =  CADSR#3005293 "Type of Graft vs Host Disease (GVHD)"
// * component[GVHD].value[x] only CodeableConcept
// * component[GVHD].valueCodeableConcept from  GVHDTypeValueSet (required)

Profile:    CIBMTRObsPriorityVariables
Parent:     cibmtr-observation-lab
Id:         cibmtr-obs-priority-variables
Title:      "CIBMTR Observation Laboratory Results: Priority Variables"
Description:    "CIBMTR Observation Laboratory Results: Priority Variables"
* code.coding from PriorityVariables2021 (extensible)

// Instance: PostInfusionProcedureTimepointType 
// InstanceOf: cibmtr-observation-lab
// Description: "Post Infusion Procedure Timepoint Type"
// Usage: #example
// * meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
// * meta.security[TransplantCenter].code = #rc_99999
// * meta.security[TransplantCenter].display = "99999 My Transplant Center"
// * status = #final
// * code.coding = http://cdebrowser.nci.nih.gov#5263856 "Post Infusion Procedure Timepoint Type"
// * valueCodeableConcept = http://cdebrowser.nci.nih.gov#4025292 "100 day"
// * effectiveDateTime = "2020-07-21T14:17:00Z"
// * subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
// * subject.identifier.value = "1234567"
// * component[GVHD].code =  CADSR#3005293 "Type of Graft vs Host Disease (GVHD)"
// * component[GVHD].valueCodeableConcept =  SCT#402355000 "Acute graft-versus-host disease (disorder)"

Instance: AlbuminObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Albumin observation"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = LNC#1751-7 "Albumin [Mass/volume] in Serum or Plasma"
* valueQuantity = UCUM#g/dL "gram per deciliter"
* valueQuantity.value = 5
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: NeutrophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Neutrophils observation"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = LNC#74398-9 "Neutrophils [#/volume] in Cord blood"
* valueQuantity = UCUM#10*9/L "billion per liter"
* valueQuantity.value = 7.9
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: LeukocytesObservation 
InstanceOf: cibmtr-observation-lab
Description: "Leukocytes observation"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = LNC#26464-8 "Leukocytes [#/volume] in Blood"
* valueQuantity = UCUM#10*9/L "billion per liter"
* valueQuantity.value = 5.2
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"


ValueSet:    GVHDTypeValueSet
Title:       "GVHD Type Value Set"
Id:          gvhdtype-valueset
Description: "Permissible values for types of Graft vs Host Disease, from NIH caDSR"
* include codes from system SCT where concept is-a #234646005 "Graft-versus-host disease (disorder)"
// * CIBMTR_SCT_CS#SCT:402355000 "Acute graft-versus-host disease (disorder)"
// * CIBMTR_SCT_CS#SCT:402356004 "Chronic graft-versus-host disease (disorder)"
* CADSR_VM_CS#CADSR:4722619 "Acute GVHD"
* CADSR_VM_CS#CADSR:2991794 "Classic cGVHD"
* CADSR_VM_CS#CADSR:2991796 "Late Acute GVHD"
* CADSR_VM_CS#CADSR:3261243 "Not Applicable"
* CADSR_VM_CS#CADSR:2991795 "Overlap cGVHD"


// CodeSystem: CIBMTR_SCT_CS
// Title: "SNOMED codes used for CIBMTR"
// Id: cibmtr-sct
// Description: "NIH Common Data Element Value Meanings for CIBMTR"
// * ^url = SCT
// * ^version = "2020"
// * ^status = #active
// * ^experimental = false
// * ^publisher = "NMDP/CIBMTR"
// * ^copyright = "National Cancer Institute (NCI)"
// * ^content = #fragment


CodeSystem: CADSR_VM_CS
Title: "NIH Common Data Element Value Meanings for CIBMTR"
Id: cibmtr-cadsr-vm
Description: "NIH Common Data Element Value Meanings for CIBMTR"
* ^url = CADSR
* ^version = "2020"
* ^status = #active
* ^experimental = false
* ^publisher = "NMDP/CIBMTR"
* ^copyright = "National Cancer Institute (NCI)"
* ^content = #fragment
* #CADSR:4722619 "Acute GVHD"
* #CADSR:2991794 "Classic cGVHD"
* #CADSR:2991795 "Overlap cGVHD"
* #CADSR:2991796 "Late Acute GVHD"
* #CADSR:3261243 "Not Applicable"


CodeSystem: CADSR_CDE_CS
Title: "NIH Common Data Elements for CIBMTR"
Id: cibmtr-cadsr-cde
Description: "NIH Common Data Elements for CIBMTR"
* ^url = CADSR
* ^version = "2020"
* ^status = #active
* ^experimental = false
* ^publisher = "NMDP/CIBMTR"
* ^copyright = "National Cancer Institute (NCI)"
* ^content = #fragment
* #CADSR:2603692 "Acute Graft Versus Host Disease Maximum Overall Grade"
* #CADSR:2626409 "Biopsy Anatomic Site Performed Name"
* #CADSR:2797618 "Acute Graft Versus Host Disease Skin Involvement Maximum Severity Type"
* #CADSR:2797633 "Acute Graft Versus Host Disease Lower Gastrointestinal Tract Involvement Maximum Severity Type"
* #CADSR:2797671 "Acute Graft Versus Host Disease Liver Involvement Maximum Severity Type"
* #CADSR:2980753 "Therapeutic Procedure Administered Type"
* #CADSR:3005293 "Graft Versus Host Disease Diagnosis Type"
* #CADSR:5040179 "Acute Graft Versus Host Disease Stage Upper Gastrointestinal Tract Severity Type"
* #CADSR:5263856 "Post Infusion Procedure Timepoint Type"
* #CADSR:6975011 "Concomitant Medication Use Indication Reason"
