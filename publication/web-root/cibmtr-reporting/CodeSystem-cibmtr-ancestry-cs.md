# CIBMTR Ancestry CodeSystem - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Ancestry CodeSystem**

## CodeSystem: CIBMTR Ancestry CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/cibmtr-ancestry | *Version*:0.1.12 |
| Draft as of 2026-08-27 | *Computable Name*:CIBMTRAncestryCodeSystem |

 
A code system for CIBMTR ancestry information. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CIBMTR Ancestry ValueSet](ValueSet-cibmtr-ancestry-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cibmtr-ancestry-cs",
  "url" : "http://example.org/fhir/CodeSystem/cibmtr-ancestry",
  "version" : "0.1.12",
  "name" : "CIBMTRAncestryCodeSystem",
  "title" : "CIBMTR Ancestry CodeSystem",
  "status" : "draft",
  "date" : "2026-08-27T20:49:22-05:00",
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
  "description" : "A code system for CIBMTR ancestry information.",
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "foo",
    "display" : "Foo"
  }]
}

```
