# PatientExample3 - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample3**

## Example Patient: PatientExample3

Profile: [CIBMTR Patient Profile (us-core)](StructureDefinition-cibmtr-patient.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

Jane Doe Female, DoB: 1944-01-29 ( http://example.org/mrn#abc)

-------

| | |
| :--- | :--- |
| Other Id: | `http://terminology.cibmtr.org/identifier/CRID`/123456 |
| Contact Detail | Garland Texas (home) |
| Links: | * Managing Organization: Good Health Medical Center (Identifier: `http://terminology.cibmtr.org/identifier/transplant-center`/00000)
 |
| US Core Ethnicity Extension: | * text: Unknown
 |
| US Core Race Extension: | * text: White Caucasian
* ombCategory: [Race & Ethnicity - CDC: 2106-3](http://hl7.org/fhir/us/core/STU4/CodeSystem-cdcrec.html#cdcrec-2106-3) (White)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample3",
  "meta" : {
    "profile" : [
      "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
    ],
    "security" : [
      {
        "system" : "http://terminology.cibmtr.org/codesystem/transplant-center",
        "code" : "rc_99999",
        "display" : "99999 My Transplant Center"
      }
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "text",
          "valueString" : "White Caucasian"
        },
        {
          "url" : "ombCategory",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2106-3",
            "display" : "White"
          }
        }
      ],
      "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
    },
    {
      "extension" : [
        {
          "url" : "text",
          "valueString" : "Unknown"
        }
      ],
      "url" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/mrn",
      "value" : "abc"
    },
    {
      "system" : "http://terminology.cibmtr.org/identifier/CRID",
      "value" : "123456"
    }
  ],
  "name" : [
    {
      "family" : "Doe",
      "given" : ["Jane"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1944-01-29",
  "address" : [
    {
      "use" : "home",
      "city" : "Garland",
      "state" : "Texas"
    }
  ],
  "managingOrganization" : {
    "identifier" : {
      "system" : "http://terminology.cibmtr.org/identifier/transplant-center",
      "value" : "00000"
    },
    "display" : "Good Health Medical Center"
  }
}

```
