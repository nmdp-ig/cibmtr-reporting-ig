# CIBMTR Patient Profile (us-core) - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Patient Profile (us-core)**

## Resource Profile: CIBMTR Patient Profile (us-core) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient | *Version*:0.1.10 |
| Draft as of 2026-05-27 | *Computable Name*:CIBMTRPatient |

 
CIBMTR Patient Profile for CRID assignment (us-core) 

# Intro

CIBMTR Direct FHIR does not currently support this Patient profile for CRID lookup/creation. It is a forward looking effort to define what would be needed once a true FHIR operation is developed and supported. Currently, CRID lookup/creation is carried out using a non-FHIR custom JSON object as described in the "Direct FHIR Connection Guide".

**Usages:**

* Refer to this Profile: [CIBMTR Cytogenetics Profile](StructureDefinition-cibmtr-cytogenetics.md)
* Examples for this Profile: [Patient/PatientExample1](Patient-PatientExample1.md), [Patient/PatientExample2](Patient-PatientExample2.md), [Patient/PatientExample3](Patient-PatientExample3.md), [Patient/PatientExample4](Patient-PatientExample4.md)... Show 2 more, [Patient/PatientExample5](Patient-PatientExample5.md) and [Patient/PatientExample6](Patient-PatientExample6.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/StructureDefinition-cibmtr-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-patient.csv), [Excel](StructureDefinition-cibmtr-patient.xlsx), [Schematron](StructureDefinition-cibmtr-patient.sch) 

### Notes:

# Notes

Here are some notes for CIBMTR Patient Profile. This is found at the end of the profile.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-patient",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient",
  "version" : "0.1.10",
  "name" : "CIBMTRPatient",
  "title" : "CIBMTR Patient Profile (us-core)",
  "status" : "draft",
  "date" : "2026-05-27T18:39:21+00:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
    "telecom" : [{
      "system" : "url",
      "value" : "http://www.cibmtr.org"
    }]
  },
  {
    "name" : "Bob Milius",
    "telecom" : [{
      "system" : "email",
      "value" : "bmilius@nmdp.org"
    }]
  }],
  "description" : "CIBMTR Patient Profile for CRID assignment (us-core)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.meta.security",
      "path" : "Patient.meta.security",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "description" : "slicing on meta.security",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Patient.meta.security:TransplantCenter",
      "path" : "Patient.meta.security",
      "sliceName" : "TransplantCenter",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.meta.security:TransplantCenter.system",
      "path" : "Patient.meta.security.system",
      "min" : 1,
      "patternUri" : "http://terminology.cibmtr.org/codesystem/transplant-center"
    },
    {
      "id" : "Patient.meta.security:TransplantCenter.code",
      "path" : "Patient.meta.security.code",
      "min" : 1,
      "constraint" : [{
        "key" : "sec-rc",
        "severity" : "error",
        "human" : "Use transplant center identifier for security tag",
        "expression" : "matches('^rc_[0-9]{5}$')",
        "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      }]
    },
    {
      "id" : "Patient.extension:MaidenNameExt",
      "path" : "Patient.extension",
      "sliceName" : "MaidenNameExt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:PatBirthPlaceExt",
      "path" : "Patient.extension",
      "sliceName" : "PatBirthPlaceExt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "system"
        }],
        "description" : "slicing on identifier.system",
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:CRID",
      "path" : "Patient.identifier",
      "sliceName" : "CRID",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:CRID.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://terminology.cibmtr.org/identifier/CRID"
    },
    {
      "id" : "Patient.identifier:GRID",
      "path" : "Patient.identifier",
      "sliceName" : "GRID",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:GRID.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "https://www.hl7.org/fhir/v2/0203/index.html"
    },
    {
      "id" : "Patient.identifier:GRID.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "patternCode" : "DR"
    },
    {
      "id" : "Patient.identifier:GRID.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://www.isbt128.org/uri/GRID"
    },
    {
      "id" : "Patient.identifier:NMDPRecipient",
      "path" : "Patient.identifier",
      "sliceName" : "NMDPRecipient",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:NMDPRecipient.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://terminology.nmdp.org/identifier/recipient"
    },
    {
      "id" : "Patient.identifier:CIBMTR-non-NMDP-donor",
      "path" : "Patient.identifier",
      "sliceName" : "CIBMTR-non-NMDP-donor",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:CIBMTR-non-NMDP-donor.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://terminology.cibmtr.org/identifier/non-nmdp-donor"
    },
    {
      "id" : "Patient.identifier:SSN",
      "path" : "Patient.identifier",
      "sliceName" : "SSN",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:SSN.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://hl7.org/fhir/sid/us-ssn"
    }]
  }
}

```
