Invariant:  val-1
Severity: #error
Description: "If valueQuantity is used, a referenceRange must also be present"
Expression: "valueQuantity.exists() implies referenceRange.exists()"

Invariant: val-2
Severity: #error
Description: "Only allow valueQuantity or valueCodeableConcept"
Expression: "valueQuantity.exists() or valueCodeableConcept.exists()"


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
* value[x] only Quantity or CodeableConcept
// * obeys val-1
// * component ^slicing.discriminator.type = #pattern
// * component ^slicing.discriminator.path = "code"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Slice based on the component.code pattern"
// * component contains GVHD 0..1
// * component[GVHD].code =  $CADSR#3005293 "Type of Graft vs Host Disease (GVHD)"
// * component[GVHD].value[x] only CodeableConcept
// * component[GVHD].valueCodeableConcept from  GVHDTypeValueSet (required)

Instance: LeukocytesObservation 
InstanceOf: cibmtr-observation-lab
Description: "Leukocytes observation"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#26464-8 "Leukocytes [#/volume] in Blood"
* valueQuantity = $UCUM#10*9/L "billion per liter"
* valueQuantity.value = 5.2
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Profile:    CIBMTRObsPriorityVariables
Parent:     cibmtr-observation-lab
Id:         cibmtr-obs-priority-variables
Title:      "CIBMTR Observation Laboratory Results: Priority Variables"
Description:    "CIBMTR Observation Laboratory Results: Priority Variables"
* code.coding from PriorityVariables2022 (extensible)

Instance: AlbuminObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Albumin [Mass/volume] in Serum or Plasma"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#1751-7 "Albumin [Mass/volume] in Serum or Plasma"
* valueQuantity = $UCUM#g/dL "gram per deciliter"
* valueQuantity.value = 5
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: NeutrophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Neutrophils [#/volume] in Cord blood"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#74398-9 "Neutrophils [#/volume] in Cord blood"
* valueQuantity = $UCUM#10*9/L "billion per liter"
* valueQuantity.value = 7.9
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: BasophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Basophils/100 leukocytes in Blood"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#30180-4	"Basophils/100 leukocytes in Blood"
* valueQuantity = $UCUM#% "percent"
* valueQuantity.value = 1
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: EosinophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Eosinophils observation, #/volume in Blood"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#26449-9	"Eosinophils [#/volume] in Blood"
* valueQuantity = $UCUM#10*3/uL	"Thousands Per MicroLiter"
* valueQuantity.value = 0.5
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: HemoglobinObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Hemoglobin [Mass/volume] in Blood"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* valueQuantity = $UCUM#g/dL "gram per deciliter"
* valueQuantity.value = 15
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: MetamyelocytesObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Metamyelocytes [Presence] in Blood"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#40651-2 "Metamyelocytes [Presence] in Blood"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"

Instance: ABOBloodGroupObservationLOINC 
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO group [Type] in Blood (883-9) with LOINC answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#883-9 "ABO group [Type] in Blood"
* valueCodeableConcept = $LNC#LA19710-5 "Group A"
* subject = Reference(PatientExample6)


Instance: ABOBloodGroupObservationSNOMED 
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO group [Type] in Blood (883-9) with SNOMED answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#883-9 "ABO group [Type] in Blood"
* valueCodeableConcept = $SCT#112144000 "Blood group A (finding)"
* subject = Reference(PatientExample6)

Instance: ABORhObservationLOINC
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO and Rh group [Type] in Blood (882-1) with LOINC answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#882-1 "ABO and Rh group [Type] in Blood"
* valueCodeableConcept = $LNC#LA21321-7 "O Pos"
* subject = Reference(PatientExample6)


Instance: ABORhObservationSNOMED
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO and Rh group [Type] in Blood (882-1) with SNOMED CT answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#882-1 "ABO and Rh group [Type] in Blood"
* valueCodeableConcept = $SCT#278147001 "Blood group O Rh(D) positive (finding)"
* subject = Reference(PatientExample6)

Instance: CMVIgAbPresenceSNOMED
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with SNOMED CT answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#13949-3 "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $SCT#10828004 "Positive (qualifier value)"
* subject = Reference(PatientExample6)

Instance: CMVIgGAbPresenceLOINC
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with LOINC answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#13949-3 "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* subject = Reference(PatientExample6)


Instance: CMVIgMAbPresenceLOINC
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with LOINC answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#24119-0 "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $LNC#LA15255-5 "Reactive"
* subject = Reference(PatientExample6)

Instance: CMVIgMAbPresenceSNOMED
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with SNOMED answer"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#24119-0 "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $SCT#11214006 "Reactive (qualifier value)"
* subject = Reference(PatientExample6)


// https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3357478/#:~:text=Given%20that%20most%20LDTs%20use,10%20million%20copies%2FmL)
Instance: CMVDNAViralLoadCopiesmL
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection (49349-4)"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#49349-4 "Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection"
* valueQuantity
//   * value = 6E+6
  * value = 6000000
  * unit = "copies per milliliter"
  * system = $UCUM
  * code = #{copies}/mL
* referenceRange
  * low
    * value = 100
    * unit = "copies per milliliter"
    * system = $UCUM
    * code = #{copies}/mL
  * high 
    // * value = 10E+6
    * value = 10000000
    * unit = "copies per milliliter"
    * system = $UCUM
    * code = #{copies}/mL
* subject = Reference(PatientExample6)


// https://www.accessdata.fda.gov/cdrh_docs/pdf11/P110037b.pdf
// https://ltd.aruplab.com/Tests/Pub/0051813
Instance: CMVDNAViralLoadIUmL
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection (72493-0)"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = $LNC#72493-0 "Cytomegalovirus DNA [Units/volume] (viral load) in Plasma by NAA with probe detection"
* valueQuantity
  * value = 13700
  * comparator = #<
  * unit = "internaltional unit per milliliter"
  * system = $UCUM
  * code = #[IU]/mL
// * referenceRange.high.value = 9e6
* referenceRange
  * low
    * value = 13700
    * unit = "internaltional unit per milliliter"
    * system = $UCUM
    * code = #[IU]/mL
  * high
    // * value = 9E6
    * value = 9000000
    * unit = "internaltional unit per milliliter"
    * system = $UCUM
    * code = #[IU]/mL
* subject = Reference(PatientExample6)



ValueSet:    PresenceValueSet
Title:       "Presence Answer List"
Id:          presence-valueset
Description: "Permissible values for presence"
* $LNC#LA9633-4 "Present"
* $LNC#LA9634-2 "Absent"
* $SCT#52101004 "Present"
* $SCT#2667000 "Absent"


ValueSet:    GVHDTypeValueSet
Title:       "GVHD Type Value Set"
Id:          gvhdtype-valueset
Description: "Permissible values for types of Graft vs Host Disease, from NIH caDSR"
* include codes from system $SCT where concept is-a #234646005 "Graft-versus-host disease (disorder)"
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
// * ^url = $SCT
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
* ^url = $CADSR
* ^version = "2020"
* ^status = #active
* ^experimental = false
* ^publisher = "NMDP/CIBMTR"
* ^copyright = "National Cancer Institute (NCI)"
* ^content = #fragment
* #$CADSR:4722619 "Acute GVHD"
* #$CADSR:2991794 "Classic cGVHD"
* #$CADSR:2991795 "Overlap cGVHD"
* #$CADSR:2991796 "Late Acute GVHD"
* #$CADSR:3261243 "Not Applicable"


CodeSystem: CADSR_CDE_CS
Title: "NIH Common Data Elements for CIBMTR"
Id: cibmtr-cadsr-cde
Description: "NIH Common Data Elements for CIBMTR"
* ^url = $CADSR
* ^version = "2020"
* ^status = #active
* ^experimental = false
* ^publisher = "NMDP/CIBMTR"
* ^copyright = "National Cancer Institute (NCI)"
* ^content = #fragment
* #$CADSR:2603692 "Acute Graft Versus Host Disease Maximum Overall Grade"
* #$CADSR:2626409 "Biopsy Anatomic Site Performed Name"
* #$CADSR:2797618 "Acute Graft Versus Host Disease Skin Involvement Maximum Severity Type"
* #$CADSR:2797633 "Acute Graft Versus Host Disease Lower Gastrointestinal Tract Involvement Maximum Severity Type"
* #$CADSR:2797671 "Acute Graft Versus Host Disease Liver Involvement Maximum Severity Type"
* #$CADSR:2980753 "Therapeutic Procedure Administered Type"
* #$CADSR:3005293 "Graft Versus Host Disease Diagnosis Type"
* #$CADSR:5040179 "Acute Graft Versus Host Disease Stage Upper Gastrointestinal Tract Severity Type"
* #$CADSR:5263856 "Post Infusion Procedure Timepoint Type"
* #$CADSR:6975011 "Concomitant Medication Use Indication Reason"
