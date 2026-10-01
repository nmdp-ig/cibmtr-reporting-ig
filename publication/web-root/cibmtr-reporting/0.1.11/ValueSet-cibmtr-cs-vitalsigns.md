# CIBMTR Vital Signs Concept Set - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Vital Signs Concept Set**

## ValueSet: CIBMTR Vital Signs Concept Set 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cibmtr-cs-vitalsigns | *Version*:0.1.11 |
| Active as of 2026-06-10 | *Computable Name*:CIBMTRConceptSet_VitalSigns |

 
CIBMTR Vital Signs Concept Set 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

No formal definition provided for this value set

 

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
  "id" : "cibmtr-cs-vitalsigns",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/cibmtr-cs-vitalsigns",
  "version" : "0.1.11",
  "name" : "CIBMTRConceptSet_VitalSigns",
  "title" : "CIBMTR Vital Signs Concept Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-10T15:00:38+00:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
  "contact" : [{
    "name" : "The Medical College of Wisconsin, Inc. and the National Marrow Donor Program",
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
  "description" : "CIBMTR Vital Signs Concept Set"
}

```
