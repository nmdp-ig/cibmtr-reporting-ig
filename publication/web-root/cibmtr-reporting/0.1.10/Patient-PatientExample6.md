# PatientExample6 - CIBMTR Reporting Implementation Guide v0.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample6**

## Example Patient: PatientExample6

Profile: [CIBMTR Patient Profile (us-core)](StructureDefinition-cibmtr-patient.md)

Security Label: 99999 My Transplant Center (Details: transplant-center code rc_99999 = '99999 My Transplant Center')

 Female, DoB Unknown ( http://terminology.cibmtr.org/identifier/CRID#123456)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample6",
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
      "system" : "http://terminology.cibmtr.org/identifier/CRID",
      "value" : "123456"
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode" : "masked"
        }
      ]
    }
  ],
  "gender" : "female"
}

```
