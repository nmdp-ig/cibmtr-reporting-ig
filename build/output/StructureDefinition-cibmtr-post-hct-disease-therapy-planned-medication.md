# CIBMTR Planned Post-HCT Disease Therapy Medication - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Planned Post-HCT Disease Therapy Medication**

## Resource Profile: CIBMTR Planned Post-HCT Disease Therapy Medication 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-post-hct-disease-therapy-planned-medication | *Version*:0.1.11 |
| Draft as of 2026-08-18 | *Computable Name*:CIBMTR_PostHCTDiseaseTherapyPlannedMedication |

 
CIBMTR Planned Post-HCT Disease Therapy Medication 

**Usages:**

* Examples for this Profile: [Medication/Medication-Post-HCT-Disease-Therapy-Example](Medication-Medication-Post-HCT-Disease-Therapy-Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-post-hct-disease-therapy-planned-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.csv), [Excel](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.xlsx), [Schematron](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-post-hct-disease-therapy-planned-medication",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-post-hct-disease-therapy-planned-medication",
  "version" : "0.1.11",
  "name" : "CIBMTR_PostHCTDiseaseTherapyPlannedMedication",
  "title" : "CIBMTR Planned Post-HCT Disease Therapy Medication",
  "status" : "draft",
  "date" : "2026-08-18T15:36:33-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and NMDP",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.cibmtr.org"
        }
      ]
    },
    {
      "name" : "Bob Milius",
      "telecom" : [
        {
          "system" : "email",
          "value" : "bmilius@nmdp.org"
        }
      ]
    }
  ],
  "description" : "CIBMTR Planned Post-HCT Disease Therapy Medication",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.code.coding",
        "path" : "Medication.code.coding",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-post-hct-disease-therapy-planned-vs"
        }
      }
    ]
  }
}

```
