# PatientExample2 - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample2**

## Example Patient: PatientExample2

Profile: [CIBMTR Patient Profile (us-core)](StructureDefinition-cibmtr-patient.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

John Doe Male, DoB Unknown ( http://example.org/mrn#abc)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample2",
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
  "identifier" : [
    {
      "system" : "http://example.org/mrn",
      "value" : "abc"
    }
  ],
  "name" : [
    {
      "family" : "Doe",
      "given" : ["John"]
    }
  ],
  "gender" : "male"
}

```
