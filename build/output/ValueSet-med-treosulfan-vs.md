# RxNorm - Treosulfan - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Treosulfan**

## ValueSet: RxNorm - Treosulfan (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-treosulfan-vs | *Version*:0.1.11 |
| Draft as of 2026-06-21 | *Computable Name*:RxNormTreosulfanVS |

 
RxNorm codes for Treosulfan 

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
  "id" : "med-treosulfan-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-treosulfan-vs",
  "version" : "0.1.11",
  "name" : "RxNormTreosulfanVS",
  "title" : "RxNorm - Treosulfan",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-21T21:50:44-05:00",
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
  "description" : "RxNorm codes for Treosulfan",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "38508",
            "display" : "treosulfan"
          },
          {
            "code" : "336841",
            "display" : "treosulfan 250 MG"
          },
          {
            "code" : "393483",
            "display" : "treosulfan 50 MG/ML"
          },
          {
            "code" : "1162765",
            "display" : "treosulfan Injectable Product"
          },
          {
            "code" : "377198",
            "display" : "treosulfan Injectable Solution"
          },
          {
            "code" : "374186",
            "display" : "treosulfan Oral Capsule"
          },
          {
            "code" : "1162766",
            "display" : "treosulfan Oral Product"
          },
          {
            "code" : "1162767",
            "display" : "treosulfan Pill"
          }
        ]
      }
    ]
  }
}

```
