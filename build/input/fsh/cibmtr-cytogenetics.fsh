Profile:        CIBMTRCytogenetics
Parent:         Variant 
Id:             cibmtr-cytogenetics
Title:          "CIBMTR Cytogenetics Profile"
Description:    "CIBMTR Cytogenetics Profile to capture ISCN"
* insert MetaSecurityRules
* subject 1..1 MS
* subject only Reference(cibmtr-patient)
* effectiveDateTime 1..1 MS
* component[cytogenomic-nomenclature] 1..1 MS
* component[genomic-source-class] 1..1 MS
* component[cytogenomic-nomenclature].valueCodeableConcept.coding.system = $ISCN

Instance: Cytogenetics-Example-1
InstanceOf: CIBMTRCytogenetics
Description: "Example of ISCN report"
// * meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "00000 Good Health Medical Center"
* status = #final
* subject = Reference(PatientExample1)
* effectiveDateTime = "2022-05-01"
* code.coding.display = "Genetic variant assessment"
* method.coding = $SCT#426329006 "Fluorescence in situ hybridization"
* component[cytogenomic-nomenclature].code.coding.display = "Variant ISCN"
* component[cytogenomic-nomenclature].valueCodeableConcept.coding = $ISCN#47<2n>,XY,-7,+8,t(9;22)(q34.1;q11.2),i(17)(q10),+der(22)t(9;22)(q34.1;q11.2)
* component[genomic-source-class].code.coding.display = "Genomic source class"
* component[genomic-source-class].valueCodeableConcept.coding = $LNC#LA6684-0 "Somatic"
