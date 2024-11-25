Profile:        CIBMTRObservationLab
Parent:         us-core-observation-lab 
Id:             cibmtr-observation-lab
Title:          "CIBMTR Observation Laboratory Results Profile (us-core)"
Description:    "CIBMTR Observation Laboratory Results Profile (us-core)"
* insert MetaSecurityRules
* effective[x] 1..1
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
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#26464-8 "Leukocytes [#/volume] in Blood"
* valueQuantity = $UCUM#10*9/L "billion per liter"
* valueQuantity.value = 5.2
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

// --------------------------------------------------------------------------

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
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#1751-7 "Albumin [Mass/volume] in Serum or Plasma"
* valueQuantity = $UCUM#g/dL "gram per deciliter"
* valueQuantity.value = 5
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: NeutrophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Neutrophils [#/volume] in Cord blood"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#74398-9 "Neutrophils [#/volume] in Cord blood"
* valueQuantity = $UCUM#10*9/L "billion per liter"
* valueQuantity.value = 7.9
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: BasophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Basophils/100 leukocytes in Blood"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#30180-4	"Basophils/100 leukocytes in Blood"
* valueQuantity = $UCUM#% "percent"
* valueQuantity.value = 1
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: EosinophilsObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Eosinophils observation, #/volume in Blood"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#26449-9	"Eosinophils [#/volume] in Blood"
* valueQuantity = $UCUM#10*3/uL	"Thousands Per MicroLiter"
* valueQuantity.value = 0.5
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: HemoglobinObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Hemoglobin [Mass/volume] in Blood"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* valueQuantity = $UCUM#g/dL "gram per deciliter"
* valueQuantity.value = 15
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: MetamyelocytesObservation 
InstanceOf: cibmtr-obs-priority-variables
Description: "Metamyelocytes [Presence] in Blood"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#40651-2 "Metamyelocytes [Presence] in Blood"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: ABOBloodGroupObservationLOINC 
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO group [Type] in Blood (883-9) with LOINC answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#883-9 "ABO group [Type] in Blood"
* valueCodeableConcept = $LNC#LA19710-5 "Group A"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: ABOBloodGroupObservationSNOMED 
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO group [Type] in Blood (883-9) with SNOMED answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#883-9 "ABO group [Type] in Blood"
* valueCodeableConcept = $SCT#112144000 "Blood group A (finding)"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: ABORhObservationLOINC
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO and Rh group [Type] in Blood (882-1) with LOINC answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#882-1 "ABO and Rh group [Type] in Blood"
* valueCodeableConcept = $LNC#LA21321-7 "O Pos"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: ABORhObservationSNOMED
InstanceOf: cibmtr-obs-priority-variables
Description: "ABO and Rh group [Type] in Blood (882-1) with SNOMED CT answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#882-1 "ABO and Rh group [Type] in Blood"
* valueCodeableConcept = $SCT#278147001 "Blood group O Rh(D) positive (finding)"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: CMVIgAbPresenceSNOMED
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with SNOMED CT answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#13949-3 "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $SCT#10828004 "Positive (qualifier value)"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: CMVIgGAbPresenceLOINC
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with LOINC answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#13949-3 "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $LNC#LA6576-8 "Positive"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: CMVIgMAbPresenceLOINC
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with LOINC answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#24119-0 "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $LNC#LA15255-5 "Reactive"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: CMVIgMAbPresenceSNOMED
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with SNOMED answer"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#24119-0 "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay"
* valueCodeableConcept = $SCT#11214006 "Reactive (qualifier value)"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


// https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3357478/#:~:text=Given%20that%20most%20LDTs%20use,10%20million%20copies%2FmL)
Instance: CMVDNAViralLoadCopiesmL
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection (49349-4)"
Usage: #example
* insert MetaSecurityExample
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
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


Instance: CMVDNAViralLoadIUmL
InstanceOf: cibmtr-obs-priority-variables
Description: "Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection (72493-0)"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#72493-0 "Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"
* valueQuantity
  * value = 13700
  * comparator = #<
  * unit = "international unit per milliliter"
  * system = $UCUM
  * code = #[IU]/mL
// * referenceRange.high.value = 9e6
* referenceRange
  * low
    * value = 13700
    * unit = "international unit per milliliter"
    * system = $UCUM
    * code = #[IU]/mL
  * high
    // * value = 9E6
    * value = 9000000
    * unit = "international unit per milliliter"
    * system = $UCUM
    * code = #[IU]/mL
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)


// Profile: WeightObservation
// Parent: Observation
// Id: weight-observation
// Title: "Weight Observation"
// Description: "Profile for capturing a patient's weight as an observation."
// * insert MetaSecurityExample
// * status = #final
// * code.coding = $LNC#29463-7 "Body weight"
// * valueQuantity = $UCUM#kg "kilogram"
// * valueQuantity.value = 70.5 // Example weight in kilograms
// * effectiveDateTime = "2020-07-21T14:17:00Z"
// * subject = Reference(PatientExample6)

Instance: HeightObservation
InstanceOf: cibmtr-obs-priority-variables
Title: "Height Observation"
Description: "Example of a patient's height observation."
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#8302-2 "Body height"
* valueQuantity = $UCUM#cm "centimeter"
* valueQuantity.value = 175
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

Instance: WeightObservation
InstanceOf: cibmtr-obs-priority-variables
Title: "Weight Observation"
Description: "Example of a patient's weight observation."
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#29463-7 "Body weight"
* valueQuantity = $UCUM#kg "kilogram"
* valueQuantity.value = 70.5
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)