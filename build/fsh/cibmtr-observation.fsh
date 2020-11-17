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
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains aGVHD 1..1
* component[aGVHD].code =  http://loinc.org#75323-6 "Condition"
* component[aGVHD].value[x] only CodeableConcept
* component[aGVHD].valueCodeableConcept =  http://cdebrowser.nci.nih.gov#4722619 "aGVHD"


Instance: PostInfusionProcedureTimepointType 
InstanceOf: cibmtr-observation-lab
Description: "Post Infusion Procedure Timepoint Type"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* status = #final
* code.coding = https://cdebrowser.nci.nih.gov#5263856 "Post Infusion Procedure Timepoint Type"
* valueCodeableConcept = https://cdebrowser.nci.nih.gov#4025292 "100 day"
* effectiveDateTime = "2020-07-21T14:17:00Z"
* subject.identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* subject.identifier.value = "1234567"
* component[aGVHD].code =  http://loinc.org#75323-6 "Condition"
* component[aGVHD].valueCodeableConcept =  http://cdebrowser.nci.nih.gov#4722619 "aGVHD"