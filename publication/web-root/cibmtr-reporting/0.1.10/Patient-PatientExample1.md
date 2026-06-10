# PatientExample1 - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample1**

## Example Patient: PatientExample1

Profile: [CIBMTR Patient Profile (us-core)](StructureDefinition-cibmtr-patient.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

Jane Doe Female, DoB Unknown ( http://example.org/mrn#abc)

-------

| | |
| :--- | :--- |
| Other Id: | `http://terminology.cibmtr.org/identifier/CRID`/123456 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample1",
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
  "gender" : "female"
}

```
