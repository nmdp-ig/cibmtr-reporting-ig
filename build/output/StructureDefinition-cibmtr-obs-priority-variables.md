# CIBMTR Observation Laboratory Results: Priority Variables - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Observation Laboratory Results: Priority Variables**

## Resource Profile: CIBMTR Observation Laboratory Results: Priority Variables 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables | *Version*:0.1.11 |
| Draft as of 2026-06-11 | *Computable Name*:CIBMTRObsPriorityVariables |

 
CIBMTR Observation Laboratory Results: Priority Variables 

**Usages:**

* Examples for this Profile: [Observation/ABOBloodGroupObservationLOINC](Observation-ABOBloodGroupObservationLOINC.md), [Observation/ABOBloodGroupObservationSNOMED](Observation-ABOBloodGroupObservationSNOMED.md), [Observation/ABORhObservationLOINC](Observation-ABORhObservationLOINC.md), [Observation/ABORhObservationSNOMED](Observation-ABORhObservationSNOMED.md)...Show 12 more,[Observation/AlbuminObservation](Observation-AlbuminObservation.md),[Observation/BasophilsObservation](Observation-BasophilsObservation.md),[Observation/CMVDNAViralLoadCopiesmL](Observation-CMVDNAViralLoadCopiesmL.md),[Observation/CMVDNAViralLoadIUmL](Observation-CMVDNAViralLoadIUmL.md),[Observation/CMVIgAbPresenceSNOMED](Observation-CMVIgAbPresenceSNOMED.md),[Observation/CMVIgGAbPresenceLOINC](Observation-CMVIgGAbPresenceLOINC.md),[Observation/CMVIgMAbPresenceLOINC](Observation-CMVIgMAbPresenceLOINC.md),[Observation/CMVIgMAbPresenceSNOMED](Observation-CMVIgMAbPresenceSNOMED.md),[Observation/EosinophilsObservation](Observation-EosinophilsObservation.md),[Observation/HemoglobinObservation](Observation-HemoglobinObservation.md),[Observation/MetamyelocytesObservation](Observation-MetamyelocytesObservation.md)and[Observation/NeutrophilsObservation](Observation-NeutrophilsObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-obs-priority-variables)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-obs-priority-variables.csv), [Excel](StructureDefinition-cibmtr-obs-priority-variables.xlsx), [Schematron](StructureDefinition-cibmtr-obs-priority-variables.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-obs-priority-variables",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables",
  "version" : "0.1.11",
  "name" : "CIBMTRObsPriorityVariables",
  "title" : "CIBMTR Observation Laboratory Results: Priority Variables",
  "status" : "draft",
  "date" : "2026-06-11T12:11:14-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
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
  "description" : "CIBMTR Observation Laboratory Results: Priority Variables",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cibmtr-priority-variables-2022"
        }
      }
    ]
  }
}

```
