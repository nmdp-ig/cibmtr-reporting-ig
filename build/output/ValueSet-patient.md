# CIBMTR Patient Ancestry Value Set - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Patient Ancestry Value Set**

## ValueSet: CIBMTR Patient Ancestry Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/patient | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:Patient |

 
US Core Race Categories (Intensional). 1. This value set is used by me 

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
  "id" : "patient",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/patient",
  "version" : "0.1.11",
  "name" : "Patient",
  "title" : "CIBMTR Patient Ancestry Value Set",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-06-10T12:52:28-05:00",
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
  "description" : "US Core Race Categories (Intensional).\r\n1.\nThis value set is used by me",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "3141-9",
            "display" : "Body weight Patient Mass Pt Qn Measured"
          },
          {
            "code" : "8352-7",
            "display" : "Clothing worn during measure Patient Type Pt Nom"
          },
          {
            "code" : "8361-8",
            "display" : "Body position with respect to gravity Patient Type Pt Nom"
          }
        ]
      }
    ]
  }
}

```
