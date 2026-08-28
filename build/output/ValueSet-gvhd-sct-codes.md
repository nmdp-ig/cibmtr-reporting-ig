# GVHD SNOMED CT Codes - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GVHD SNOMED CT Codes**

## ValueSet: GVHD SNOMED CT Codes (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/gvhd-sct-codes | *Version*:0.1.12 |
| Draft as of 2026-08-27 | *Computable Name*:GVHDSCTVS |

 
GVHD SNOMED CT Codes 

 **References** 

* Included into [GVHD Type Value Set](ValueSet-gvhd-all-valueset.md)

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
  "id" : "gvhd-sct-codes",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/gvhd-sct-codes",
  "version" : "0.1.12",
  "name" : "GVHDSCTVS",
  "title" : "GVHD SNOMED CT Codes",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "GVHD SNOMED CT Codes",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "234646005"
      }]
    }]
  }
}

```
