# RxNorm - Cyclophosphamide - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Cyclophosphamide**

## ValueSet: RxNorm - Cyclophosphamide (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-cyclophosphamide-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:RxNormCyclophosphamideVS |

 
RxNorm codes for Cyclophosphamide 

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
  "id" : "med-cyclophosphamide-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-cyclophosphamide-vs",
  "version" : "0.1.11",
  "name" : "RxNormCyclophosphamideVS",
  "title" : "RxNorm - Cyclophosphamide",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "RxNorm codes for Cyclophosphamide",
  "compose" : {
    "include" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "concept" : [{
        "code" : "3002",
        "display" : "cyclophosphamide"
      },
      {
        "code" : "202589",
        "display" : "Cytoxan"
      },
      {
        "code" : "202588",
        "display" : "Endoxana"
      },
      {
        "code" : "1545988",
        "display" : "cyclophosphamide anhydrous"
      },
      {
        "code" : "221085",
        "display" : "cyclophosphamide lyophilized"
      },
      {
        "code" : "1156180",
        "display" : "cyclophosphamide / mannitol Injectable Product"
      },
      {
        "code" : "377238",
        "display" : "cyclophosphamide / mannitol Injectable Solution"
      },
      {
        "code" : "358855",
        "display" : "cyclophosphamide 10 MG"
      },
      {
        "code" : "563185",
        "display" : "cyclophosphamide 10 MG [Endoxana]"
      },
      {
        "code" : "102948",
        "display" : "cyclophosphamide 10 MG Oral Tablet [Endoxana]"
      },
      {
        "code" : "438828",
        "display" : "cyclophosphamide 10 MG/ML"
      },
      {
        "code" : "1734918",
        "display" : "cyclophosphamide 1000 MG"
      },
      {
        "code" : "329664",
        "display" : "cyclophosphamide 20 MG/ML"
      },
      {
        "code" : "2386858",
        "display" : "cyclophosphamide 200 MG/ML"
      },
      {
        "code" : "1734920",
        "display" : "cyclophosphamide 2000 MG"
      },
      {
        "code" : "315746",
        "display" : "cyclophosphamide 25 MG"
      },
      {
        "code" : "571074",
        "display" : "cyclophosphamide 25 MG [Cytoxan]"
      },
      {
        "code" : "210570",
        "display" : "cyclophosphamide 25 MG Oral Tablet [Cytoxan]"
      },
      {
        "code" : "438830",
        "display" : "cyclophosphamide 5 MG/ML"
      },
      {
        "code" : "315747",
        "display" : "cyclophosphamide 50 MG"
      },
      {
        "code" : "571139",
        "display" : "cyclophosphamide 50 MG [Cytoxan]"
      },
      {
        "code" : "564082",
        "display" : "cyclophosphamide 50 MG [Endoxana]"
      },
      {
        "code" : "210639",
        "display" : "cyclophosphamide 50 MG Oral Tablet [Cytoxan]"
      },
      {
        "code" : "105555",
        "display" : "cyclophosphamide 50 MG Oral Tablet [Endoxana]"
      },
      {
        "code" : "1734915",
        "display" : "cyclophosphamide 500 MG"
      },
      {
        "code" : "438831",
        "display" : "cyclophosphamide 7.5 MG/ML"
      },
      {
        "code" : "1156181",
        "display" : "cyclophosphamide Injectable Product"
      },
      {
        "code" : "376666",
        "display" : "cyclophosphamide Injectable Solution"
      },
      {
        "code" : "1734916",
        "display" : "cyclophosphamide Injection"
      },
      {
        "code" : "1437967",
        "display" : "cyclophosphamide Oral Capsule"
      },
      {
        "code" : "1156182",
        "display" : "cyclophosphamide Oral Product"
      },
      {
        "code" : "371664",
        "display" : "cyclophosphamide Oral Tablet"
      },
      {
        "code" : "367922",
        "display" : "cyclophosphamide Oral Tablet [Cytoxan]"
      },
      {
        "code" : "368546",
        "display" : "cyclophosphamide Oral Tablet [Endoxana]"
      },
      {
        "code" : "1156183",
        "display" : "cyclophosphamide Pill"
      },
      {
        "code" : "1174493",
        "display" : "Cytoxan Oral Product"
      },
      {
        "code" : "1174494",
        "display" : "Cytoxan Pill"
      },
      {
        "code" : "1176602",
        "display" : "Endoxana Oral Product"
      },
      {
        "code" : "1176603",
        "display" : "Endoxana Pill"
      },
      {
        "code" : "690313",
        "display" : "cyclophosphamide / mannitol"
      }]
    }]
  }
}

```
