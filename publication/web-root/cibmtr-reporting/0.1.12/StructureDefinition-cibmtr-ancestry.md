# CIBMTR Ancestry Extension - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Ancestry Extension**

## Extension: CIBMTR Ancestry Extension 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/StructureDefinition/cibmtr-ancestry | *Version*:0.1.12 |
| Draft as of 2026-08-27 | *Computable Name*:CIBMTRAncestryContainer |

Container extension holding US Core Race plus CIBMTR ancestry codes.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/StructureDefinition-cibmtr-ancestry.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-ancestry.csv), [Excel](StructureDefinition-cibmtr-ancestry.xlsx), [Schematron](StructureDefinition-cibmtr-ancestry.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-ancestry",
  "url" : "http://example.org/fhir/StructureDefinition/cibmtr-ancestry",
  "version" : "0.1.12",
  "name" : "CIBMTRAncestryContainer",
  "title" : "CIBMTR Ancestry Extension",
  "status" : "draft",
  "date" : "2026-08-27T20:40:53-05:00",
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
  "description" : "Container extension holding US Core Race plus CIBMTR ancestry codes.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "CIBMTR Ancestry Extension",
      "definition" : "Container extension holding US Core Race plus CIBMTR ancestry codes."
    },
    {
      "id" : "Extension.extension:usCoreRace",
      "path" : "Extension.extension",
      "sliceName" : "usCoreRace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cibmtrAncestry",
      "path" : "Extension.extension",
      "sliceName" : "cibmtrAncestry",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cibmtrAncestry.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cibmtrAncestry.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cibmtrAncestry"
    },
    {
      "id" : "Extension.extension:cibmtrAncestry.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termservices.nmdp.org/atlas/#/conceptset/136/expression"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/StructureDefinition/cibmtr-ancestry"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
