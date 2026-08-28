// ======================================================
// Aliases
// ======================================================
Alias: $us-core-race = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias: MothersMaidenNameExtension = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
Alias: BirthSexExtension = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
Alias: PatientBirthPlaceExtension = http://hl7.org/fhir/StructureDefinition/patient-birthPlace

// Choose a base canonical that matches your IG.
// Replace http://example.org/fhir with your real canonical if you have one.
Alias: $CIBMTRAncestryVS = https://termservices.nmdp.org/atlas/#/conceptset/136/expression
Alias: $CIBMTRAncestryCS = http://example.org/fhir/CodeSystem/cibmtr-ancestry
Alias: $CIBMTRAncestryContainer = http://example.org/fhir/StructureDefinition/cibmtr-ancestry

// ======================================================
// Terminology artifacts
// ======================================================
CodeSystem: CIBMTRAncestryCodeSystem
Id: cibmtr-ancestry-cs
Title: "CIBMTR Ancestry CodeSystem"
Description: "A code system for CIBMTR ancestry information."
* ^url = $CIBMTRAncestryCS
* #foo "Foo"

ValueSet: CIBMTRAncestryValueset
Id: cibmtr-ancestry-vs
Title: "CIBMTR Ancestry ValueSet"
Description: "A value set for CIBMTR ancestry information."
* ^url = $CIBMTRAncestryVS
* include codes from system CIBMTRAncestryCodeSystem


Extension: CIBMTRAncestryContainer
Id: cibmtr-ancestry
Title: "CIBMTR Ancestry Extension"
Description: "Container extension holding US Core Race plus CIBMTR ancestry codes."
* ^url = $CIBMTRAncestryContainer
* ^context.type = #element
* ^context.expression = "Patient"

// Container extension => no value, only subextensions
* value[x] 0..0

// Slice child extensions by url
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

// Child #1: nested US Core Race extension
* extension contains $us-core-race named usCoreRace 0..1 MS
* extension[usCoreRace].url = $us-core-race (exactly)
* extension[usCoreRace].value[x] 0..0

// Child #2: CIBMTR ancestry codes (repeatable)
* extension contains cibmtrAncestry 0..* MS
* extension[cibmtrAncestry].url = "cibmtrAncestry" (exactly)
* extension[cibmtrAncestry].value[x] only Coding
* extension[cibmtrAncestry].valueCoding from CIBMTRAncestryValueset (required)


// ======================================================
// Patient Profile
// ======================================================
Profile:        CIBMTRPatient
Parent:         us-core-patient
Id:             cibmtr-patient
Title:          "CIBMTR Patient Profile (us-core)"
//Description:    "CIBMTR Patient Profile (us-core)."

* extension contains MothersMaidenNameExtension named MaidenNameExt 0..1 MS
//* extension contains BirthSexExtension named BirthSexExt 0..1 MS
* extension contains PatientBirthPlaceExtension named PatBirthPlaceExt 0..1 MS
* insert MetaSecurityRules
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
* identifier[SSN].system = "http://hl7.org/fhir/sid/us-ssn"
// * managingOrganization obeys orgSys 
// * managingOrganization.identifier from ManagingOrgVS 
// Invariant: orgSys
// Description: "Managing Organization Systems"
// Expression: "('http://cibmtr.org/identifier/transplant-center' in identifier.system) or ('http://nmdp.org/identifier/transplant-center' in identifier.system)"
// Severity: #warning

Instance: PatientExample1
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "Patient with CIBMTR CRID"
Usage: #example
* insert MetaSecurityExample
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "abc"
* identifier[1].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[1].value = "123456"
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"

Instance: PatientExample2 
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "example using CIBMTR center number"
Usage: #example
* insert MetaSecurityExample
* identifier.system = "http://example.org/mrn"
* identifier.value = "abc"
* name.given = "John"
* name.family = "Doe"
* gender = #male
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"


Instance: PatientExample3
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "Patient with MRN and CRID, Race=White, Ethnicity=Unknown"
Usage: #example
* insert MetaSecurityExample
* identifier[0].system = "http://example.org/mrn"
* identifier[0].value = "abc"
* identifier[1].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[1].value = "123456"
* name.given = "Jane"
* name.family = "Doe"
* gender = #female
* birthDate = "1944-01-29"
* address[+].use = #home
* address[=].city = "Garland"
* address[=].state = "Texas"
* extension[race].extension[text].valueString = "White Caucasian"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[ethnicity].extension[text].valueString = "Unknown"
* managingOrganization.identifier.system = "http://terminology.cibmtr.org/identifier/transplant-center"
* managingOrganization.identifier.value = "00000"
* managingOrganization.display = "Good Health Medical Center"


Instance: PatientExample4
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "Patient with CRID and MRN, Race=Black or African American, Ethnicity=Unknown"
Usage: #example
* insert MetaSecurityExample
* identifier[+].system = "http://example.org/mrn"
* identifier[=].value = "abc"
* identifier[+].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[=].value = "1234567"
* identifier[=].use = #official
* name.given = "Peter"
* name.family = "Doe"
* gender = #male
* birthDate = "1952-05-07"
* address[+].use = #home
* address[=].city = "Grand Prarie"
* address[=].state = "Texas"
* address[=].country = "Unknown or unspecified"
* extension[race].extension[text].valueString = "Black or African American"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5	 "Black or African American"
* extension[ethnicity].extension[text].valueString = "Unknown"
* managingOrganization.identifier.system = "http://terminology.cibmtr.org/identifier/transplant-center"
* managingOrganization.identifier.value = "00000"
* managingOrganization.display = "Good Health Medical Center"


Instance: PatientExample5
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "Patient with CRID & MRN, Race=Mixed, Ethnicity=Not Hispanic or Latino"
Usage: #example
* insert MetaSecurityExample
* identifier[+].system = "http://example.org/mrn"
* identifier[=].value = "abc"
* identifier[+].system = "http://terminology.cibmtr.org/identifier/CRID"
* identifier[=].value = "1234567"
* identifier[=].use = #official
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


Instance: PatientExample6
InstanceOf: http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient
Description: "Patient with CIBMTR CRID"
Usage: #example
* insert MetaSecurityExample
* identifier[+]
  * system = "http://terminology.cibmtr.org/identifier/CRID"
  * value = "123456"
* name[+].extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #masked
* gender = #female
// * managingOrganization.identifier.system = "http://cibmtr.org/identifier/transplant-center"
// * managingOrganization.identifier.value = "456"

// ValueSet: ManagingOrgVS
// Title: "Managing Organizations Value Set"
// Id: managing-org-valueset
// Description:  "Managing Organization Systems"
// * http://cibmtr.org/identifier/transplant-center# 
// * http://nmdp.org/identifier/transplant-center# 





