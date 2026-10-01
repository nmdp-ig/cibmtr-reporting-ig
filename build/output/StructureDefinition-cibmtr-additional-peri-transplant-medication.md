# CIBMTR Additional Drugs in Peri-Transplant Period - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Additional Drugs in Peri-Transplant Period**

## Resource Profile: CIBMTR Additional Drugs in Peri-Transplant Period 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-additional-peri-transplant-medication | *Version*:0.1.12 |
| Draft as of 2026-08-27 | *Computable Name*:CIBMTR_AdditionalPeriTransplantMedication |

 
CIBMTR Additional Drugs Given in the Peri-Transplant Period. Drugs may be given during the peri-transplant period to prevent transplant-related complications, such as liver injuries or to facilitate engraftment. 

**Usages:**

* Examples for this Profile: [Medication/Medication-Peri-Transplant-Example](Medication-Medication-Peri-Transplant-Example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/StructureDefinition-cibmtr-additional-peri-transplant-medication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-additional-peri-transplant-medication.csv), [Excel](StructureDefinition-cibmtr-additional-peri-transplant-medication.xlsx), [Schematron](StructureDefinition-cibmtr-additional-peri-transplant-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-additional-peri-transplant-medication",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-additional-peri-transplant-medication",
  "version" : "0.1.12",
  "name" : "CIBMTR_AdditionalPeriTransplantMedication",
  "title" : "CIBMTR Additional Drugs in Peri-Transplant Period",
  "status" : "draft",
  "date" : "2026-08-27T20:01:54-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and NMDP",
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
  "description" : "CIBMTR Additional Drugs Given in the Peri-Transplant Period. Drugs may be given during the peri-transplant period to prevent transplant-related complications, such as liver injuries or to facilitate engraftment.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.code.coding",
      "path" : "Medication.code.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-addition-peri-transplant-vs"
      }
    }]
  }
}

```
