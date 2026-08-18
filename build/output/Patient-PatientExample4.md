# PatientExample4 - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample4**

## Example Patient: PatientExample4

Profile: [CIBMTR Patient Profile (us-core)](StructureDefinition-cibmtr-patient.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

Peter Doe Male, DoB: 1952-05-07 ( http://terminology.cibmtr.org/identifier/CRID#1234567 (use: official, ))

-------

| | |
| :--- | :--- |
| Other Id: | `http://example.org/mrn`/abc |
| Contact Detail | Grand Prarie Texas Unknown or unspecified (home) |
| Links: | * Managing Organization: Good Health Medical Center (Identifier: `http://terminology.cibmtr.org/identifier/transplant-center`/00000)
 |
| US Core Ethnicity Extension: | * text: Unknown
 |
| US Core Race Extension: | * text: Black or African American
* ombCategory: [CDC Race and Ethnicity: 2054-5](http://terminology.hl7.org/6.5.0/CodeSystem-CDCREC.html#CDCREC-2054-5) (Black or African American)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample4",
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
          "valueString" : "Black or African American"
        },
        {
          "url" : "ombCategory",
          "valueCoding" : {
            "system" : "urn:oid:2.16.840.1.113883.6.238",
            "code" : "2054-5",
            "display" : "Black or African American"
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
      "use" : "official",
      "system" : "http://terminology.cibmtr.org/identifier/CRID",
      "value" : "1234567"
    }
  ],
  "name" : [
    {
      "family" : "Doe",
      "given" : ["Peter"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1952-05-07",
  "address" : [
    {
      "use" : "home",
      "city" : "Grand Prarie",
      "state" : "Texas",
      "country" : "Unknown or unspecified"
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
