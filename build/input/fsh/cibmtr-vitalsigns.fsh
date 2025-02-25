Profile:        CIBMTRVitalSignsVariables
Parent:         us-core-vital-signs 
Id:             cibmtr-vital-signs
Title:          "CIBMTR Vital Signs Results Profile (us-core)"
Description:    "CIBMTR Vital Signs Results Profile (us-core)"
* insert MetaSecurityRules
* effective[x] 1..1
* value[x] only Quantity or CodeableConcept
* code.coding from VitalSigns (extensible)


// --------------------------------------------------------------------------

Profile:    CIBMTRVitalSignsHeight
Parent:     us-core-body-height  
Id:         cibmtr-vital-signs-height
Title:      "CIBMTR Vital Signs-Height Profile (us-core)"
Description: "CIBMTR Vital Signs-Height Profile (us-core)"
* insert MetaSecurityRules
* effective[x] 1..1
* value[x] only Quantity or CodeableConcept





// --------------------------------------------------------------------------

Profile:    CIBMTRVitalSignsWeight
Parent:     us-core-body-weight 
Id:         cibmtr-vital-signs-weight
Title:      "CIBMTR Vital Signs-Weight Profile (us-core)"
Description: "CIBMTR Vital Signs-Weight Profile (us-core)"
* insert MetaSecurityRules
* effective[x] 1..1
* value[x] only Quantity or CodeableConcept

// --------------------------------------------------------------------------

Instance: BodyHeight 
InstanceOf: cibmtr-vital-signs-height
Description: "Body Height (8302-2)"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#8302-2 
* valueQuantity = $UCUM#[in_i] "in"
* valueQuantity.value = 65.89999999999999
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)

// --------------------------------------------------------------------------

Instance: BodyWeight 
InstanceOf: cibmtr-vital-signs-weight
Description: "Body Weight (29463-7)"
Usage: #example
* insert MetaSecurityExample
* status = #final
* code.coding = $LNC#29463-7
* valueQuantity = $UCUM#kg "kg"
* valueQuantity.value = 50.09414
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject = Reference(PatientExample6)






