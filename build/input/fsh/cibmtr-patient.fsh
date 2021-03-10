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
// * extension[PatBirthPlaceExt].valueAddress.city MS
// * extension[PatBirthPlaceExt].valueAddress.state MS
// * extension[PatBirthPlaceExt].valueAddress.country MS
 
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
Description: "example using CIBMTR center number"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "00000 Good Health Medical Center"
* identifier.system = "http://example.org/mrn"
* identifier.value = "abc"
* name.given = "John"
* name.family = "Doe"
* gender = #male
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"


Instance: MyPatientExample2
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using CIBMTR CRID"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "00000 Good Health Medical Center"
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "abc"
* identifier[1].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[1].value = "123456"
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"


Instance: MyPatientExample3
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using MRN and CRID, Race=White, Ethnicity=Unknown"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "00000 Good Health Medical Center"
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "abc"
* identifier[1].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[1].value = "123456"
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
* birthDate = "1944-01-29"
* address[0].use = #home
* address[0].city = "Garland"
* address[0].state = "Texas"
* extension[race].extension[text].valueString = "White Caucasian"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[ethnicity].extension[text].valueString = "Unknown"
* managingOrganization.identifier.system = "http://terminology.cibmtr.org/identifier/transplant-center"
* managingOrganization.identifier.value = "00000"
* managingOrganization.display = "Good Health Medical Center"


Instance: MyPatientExample4
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using CRID and MRN, Race=Black or African American, Ethnicity=Unknown"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "00000 Good Health Medical Center"
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "abc"
* identifier[1].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[1].value = "1234567"
* identifier[1].use = #official
* name.given = "Peter"
* name.family = "Doe"
* gender = #male
* birthDate = "1952-05-07"
* address[0].use = #home
* address[0].city = "Grand Prarie"
* address[0].state = "Texas"
* address[0].country = "Unknown or unspecified"
* extension[race].extension[text].valueString = "Black or African American"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5	 "Black or African American"
* extension[ethnicity].extension[text].valueString = "Unknown"
* managingOrganization.identifier.system = "http://terminology.cibmtr.org/identifier/transplant-center"
* managingOrganization.identifier.value = "00000"
* managingOrganization.display = "Good Health Medical Center"


Instance: MyPatientExample5
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using CRID & MRN, Race=Mixed, Ethnicity=Not Hispanic or Latino"
Usage: #example
* meta.security[TransplantCenter].system = "http://terminology.cibmtr.org/codesystem/transplant-center"
* meta.security[TransplantCenter].code = #rc_00000
* meta.security[TransplantCenter].display = "00000 Good Health Medical Center"
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "abc"
* identifier[1].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[1].value = "1234567"
* identifier[1].use = #official
* name.given = "Peter"
* name.family = "Doe"
* gender = #male
* birthDate = "1952-05-07"
* address[0].use = #home
* address[0].city = "Grand Prarie"
* address[0].state = "Texas"
* extension[race].extension[text].valueString = "Mixed"
* extension[race].extension[ombCategory][0].valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5	 "Black or African American"
* extension[race].extension[ombCategory][1].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9	 "Asian"
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* managingOrganization.identifier.system = "http://terminology.cibmtr.org/identifier/transplant-center"
* managingOrganization.identifier.value = "00000"
* managingOrganization.display = "Good Health Medical Center"


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