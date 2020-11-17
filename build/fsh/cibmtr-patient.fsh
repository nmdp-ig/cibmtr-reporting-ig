Alias: MothersMaidenNameExtension = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
Alias: BirthSexExtension = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
Alias: PatientBirthPlaceExtension = http://hl7.org/fhir/StructureDefinition/patient-birthPlace

Profile:        CIBMTRPatient
Parent:         us-core-patient 
Id:             cibmtr-patient
Title:          "CIBMTR Patient Profile (us-core)"
Description:    "CIBMTR Patient Profile for CRID assignment (us-core)"

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName 0..1 MS
// * extension contains MaidenNameExt 0..1 MS
* extension contains MothersMaidenNameExtension named MaidenNameExt 0..1 MS
* extension contains BirthSexExtension named BirthSexExt 0..1 MS
* extension contains PatientBirthPlaceExtension named PatBirthPlaceExt 0..1 MS
* extension[PatBirthPlaceExt].valueAddress.city MS
* extension[PatBirthPlaceExt].valueAddress.state MS
* extension[PatBirthPlaceExt].valueAddress.country MS
 
* meta.security ^slicing.discriminator.type = #pattern
* meta.security ^slicing.discriminator.path = "system"
* meta.security ^slicing.rules = #open
* meta.security ^slicing.description = "slicing on meta.security"
* meta.security contains
    TransplantCenter 1..1 MS
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code obeys sec-rc

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slicing on identifier.system"
* identifier contains 
    CRID 0..1 MS and
    GRID 0..1 MS and
    NMDPRecipient 0..1 MS and
    CIBMTR-non-NMDP-donor 0..1 and
    // IUBMID 0..1 and
    // institutionPersonID 0..1 MS and
    // otherOutcomesRegistryPersonId 0..1 MS and
    SSN 0..1 MS
    
* identifier[CRID].system = "http://terminology.cibmtr.org/identifier/CRID"

* identifier[GRID].system = "http://www.isbt128.org/uri/GRID"
* identifier[GRID].type.coding.system = "https://www.hl7.org/fhir/v2/0203/index.html"
* identifier[GRID].type.coding.code = #DR

* identifier[NMDPRecipient].system = "http://terminology.nmdp.org/identifier/recipient"

* identifier[CIBMTR-non-NMDP-donor].system = "http://terminology.cibmtr.org/identifier/non-nmdp-donor"

// * identifier[IUBMID].system = "http://terminology.cibmtr.org/identifier/iubmid"
// * identifier[IUBMID].assigner.display = "IBMTR"

* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"

// * managingOrganization obeys orgSys 
// * managingOrganization.identifier from ManagingOrgVS 
// Invariant: orgSys
// Description: "Managing Organization Systems"
// Expression: "('http://cibmtr.org/identifier/transplant-center' in identifier.system) or ('http://nmdp.org/identifier/transplant-center' in identifier.system)"
// Severity: #warning

Instance: MyPatientExample1 
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using NMDP center number"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_99999
* meta.security[TransplantCenter].display = "99999 My Transplant Center"
* identifier.system = "http://example.org/mrn"
* identifier.value = "abc"
* name.given = "John"
* name.family = "Doe"
* gender = #male
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"

Instance: MyPatientExample2
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using NMDP center number"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "0000 My Transplant Center"
* identifier.system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier.value = "abc"
* identifier[CRID].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[CRID].value = "123456"
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"

// ValueSet: ManagingOrgVS
// Title: "Managing Organizations Value Set"
// Id: managing-org-valueset
// Description:  "Managing Organization Systems"
// * http://cibmtr.org/identifier/transplant-center# 
// * http://nmdp.org/identifier/transplant-center# 


Invariant:  sec-rc
Severity:   #error
Description: "Use transplant center identifier for security tag"
Expression: "matches('^rc_[0-9]{5}$')"