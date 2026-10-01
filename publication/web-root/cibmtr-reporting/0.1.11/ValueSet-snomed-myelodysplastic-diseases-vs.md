# SNOMED Myelodysplastic Diseases - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SNOMED Myelodysplastic Diseases**

## ValueSet: SNOMED Myelodysplastic Diseases (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/snomed-myelodysplastic-diseases-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:SNOMEDMyelodysplasticDiseasesVS |

 
The myelodysplastic syndromes (MDS) are a group of clonal hematopoietic stem cell diseases characterized by cytopenia(s), dysplasia (abnormal growth or development leading to an alteration in size, shape, and organization of the cell) in one or more of the major myeloid cell lines (WBC, RBC, and/or platelets), ineffective hematopoiesis, and an increased risk of developing acute myelogenous leukemia (AML). MDS occurs primarily in older adults, with a median age of 70 years. The majority of recipients present with symptoms related to cytopenias. Most recipients present with anemia requiring RBC transfusions. 

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
  "id" : "snomed-myelodysplastic-diseases-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/snomed-myelodysplastic-diseases-vs",
  "version" : "0.1.11",
  "name" : "SNOMEDMyelodysplasticDiseasesVS",
  "title" : "SNOMED Myelodysplastic Diseases",
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
  "description" : "The myelodysplastic syndromes (MDS) are a group of clonal hematopoietic stem cell diseases characterized by cytopenia(s), dysplasia (abnormal growth or development leading to an alteration in size, shape, and organization of the cell) in one or more of the major myeloid cell lines (WBC, RBC, and/or platelets), ineffective hematopoiesis, and an increased risk of developing acute myelogenous leukemia (AML). MDS occurs primarily in older adults, with a median age of 70 years. The majority of recipients present with symptoms related to cytopenias. Most recipients present with anemia requiring RBC transfusions.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "109995007"
      }]
    }]
  }
}

```
