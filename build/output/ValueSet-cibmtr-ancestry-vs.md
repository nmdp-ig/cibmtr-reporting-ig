# CIBMTR Ancestry ValueSet - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Ancestry ValueSet**

## ValueSet: CIBMTR Ancestry ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://termservices.nmdp.org/atlas/#/conceptset/136/expression | *Version*:0.1.11 |
| Draft as of 2026-06-11 | *Computable Name*:CIBMTRAncestryValueset |

 
A value set for CIBMTR ancestry information. 

 **References** 

* [CIBMTR Ancestry Extension](StructureDefinition-cibmtr-ancestry.md)

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
  "id" : "cibmtr-ancestry-vs",
  "url" : "https://termservices.nmdp.org/atlas/#/conceptset/136/expression",
  "version" : "0.1.11",
  "name" : "CIBMTRAncestryValueset",
  "title" : "CIBMTR Ancestry ValueSet",
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
  "description" : "A value set for CIBMTR ancestry information.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/cibmtr-ancestry"
      }
    ]
  }
}

```
