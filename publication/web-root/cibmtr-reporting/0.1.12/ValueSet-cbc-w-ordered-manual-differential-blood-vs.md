# CBC W Ordered Manual Differential panel - Blood (57782-5) - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CBC W Ordered Manual Differential panel - Blood (57782-5)**

## ValueSet: CBC W Ordered Manual Differential panel - Blood (57782-5) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-w-ordered-manual-differential-blood-vs | *Version*:0.1.12 |
| Draft as of 2026-08-28 | *Computable Name*:CBCWOrderedManualDifferentialBloodVS |

 
CBC W Ordered Manual Differential panel - Blood (57782-5) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "cbc-w-ordered-manual-differential-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-w-ordered-manual-differential-blood-vs",
  "version" : "0.1.12",
  "name" : "CBCWOrderedManualDifferentialBloodVS",
  "title" : "CBC W Ordered Manual Differential panel - Blood (57782-5)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-28T03:34:40+00:00",
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
  "description" : "CBC W Ordered Manual Differential panel - Blood (57782-5)",
  "compose" : {
    "include" : [{
      "valueSet" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cbc-blood-automated-vs"]
    },
    {
      "valueSet" : ["http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/manual-differential-blood-vs"]
    }]
  }
}

```
