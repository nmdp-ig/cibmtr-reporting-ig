# RxNorm - Additional Drugs in Peri-Transplant Period - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RxNorm - Additional Drugs in Peri-Transplant Period**

## ValueSet: RxNorm - Additional Drugs in Peri-Transplant Period (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-addition-peri-transplant-vs | *Version*:0.1.11 |
| Draft as of 2026-06-10 | *Computable Name*:RxNormAdditionalPeriTransplantVS |

 
RxNorm codes for Additional Drugs in Peri-Transplant Period 

 **References** 

* Included into [RxNormAll2400VS](ValueSet-med-all-form2400-vs.md)
* [CIBMTR Additional Drugs in Peri-Transplant Period](StructureDefinition-cibmtr-additional-peri-transplant-medication.md)

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
  "id" : "med-addition-peri-transplant-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/med-addition-peri-transplant-vs",
  "version" : "0.1.11",
  "name" : "RxNormAdditionalPeriTransplantVS",
  "title" : "RxNorm - Additional Drugs in Peri-Transplant Period",
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
  "description" : "RxNorm codes for Additional Drugs in Peri-Transplant Period",
  "compose" : {
    "include" : [{
      "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
      "concept" : [{
        "code" : "1011",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin"
      },
      {
        "code" : "107047",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG Injection"
      },
      {
        "code" : "107050",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG Injection [Thymoglobulin]"
      },
      {
        "code" : "11065",
        "display" : "ursodiol"
      },
      {
        "code" : "1164265",
        "display" : "alemtuzumab Injectable Product"
      },
      {
        "code" : "1165939",
        "display" : "ATGAM Injectable Product"
      },
      {
        "code" : "117055",
        "display" : "alemtuzumab"
      },
      {
        "code" : "1172298",
        "display" : "Campath Injectable Product"
      },
      {
        "code" : "1177887",
        "display" : "Thymoglobulin Injectable Product"
      },
      {
        "code" : "1204",
        "display" : "ATGAM"
      },
      {
        "code" : "1311089",
        "display" : "defibrotide"
      },
      {
        "code" : "1594657",
        "display" : "alemtuzumab 10 MG/ML"
      },
      {
        "code" : "1594658",
        "display" : "1.2 ML alemtuzumab 10 MG/ML Injection"
      },
      {
        "code" : "1594659",
        "display" : "Lemtrada"
      },
      {
        "code" : "1594660",
        "display" : "alemtuzumab 10 MG/ML [Lemtrada]"
      },
      {
        "code" : "1594662",
        "display" : "Lemtrada Injectable Product"
      },
      {
        "code" : "1594663",
        "display" : "1.2 ML alemtuzumab 10 MG/ML Injection [Lemtrada]"
      },
      {
        "code" : "1656628",
        "display" : "alemtuzumab 30 MG/ML"
      },
      {
        "code" : "1656629",
        "display" : "alemtuzumab Injection"
      },
      {
        "code" : "1656631",
        "display" : "alemtuzumab 30 MG/ML [Campath]"
      },
      {
        "code" : "1656632",
        "display" : "alemtuzumab Injection [Campath]"
      },
      {
        "code" : "1656637",
        "display" : "alemtuzumab Injection [Lemtrada]"
      },
      {
        "code" : "1746523",
        "display" : "defibrotide sodium"
      },
      {
        "code" : "1746524",
        "display" : "defibrotide sodium 80 MG/ML"
      },
      {
        "code" : "1746525",
        "display" : "defibrotide Injectable Product"
      },
      {
        "code" : "1746526",
        "display" : "defibrotide Injection"
      },
      {
        "code" : "1746527",
        "display" : "2.5 ML defibrotide sodium 80 MG/ML Injection"
      },
      {
        "code" : "1746528",
        "display" : "Defitelio"
      },
      {
        "code" : "1746529",
        "display" : "defibrotide sodium 80 MG/ML [Defitelio]"
      },
      {
        "code" : "1746530",
        "display" : "defibrotide Injection [Defitelio]"
      },
      {
        "code" : "1746531",
        "display" : "Defitelio Injectable Product"
      },
      {
        "code" : "1746532",
        "display" : "2.5 ML defibrotide sodium 80 MG/ML Injection [Defitelio]"
      },
      {
        "code" : "1788946",
        "display" : "defibrotide, bovine lung"
      },
      {
        "code" : "197906",
        "display" : "5 ML lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML Injection"
      },
      {
        "code" : "206289",
        "display" : "5 ML lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML Injection [ATGAM]"
      },
      {
        "code" : "225741",
        "display" : "Thymoglobulin"
      },
      {
        "code" : "2282514",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML"
      },
      {
        "code" : "2282515",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injectable Product"
      },
      {
        "code" : "2282516",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection"
      },
      {
        "code" : "2282518",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine 50 MG/ML [ATGAM]"
      },
      {
        "code" : "2282519",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection [ATGAM]"
      },
      {
        "code" : "2282525",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG"
      },
      {
        "code" : "2282527",
        "display" : "rabbit anti-human T-lymphocyte globulin 25 MG [Thymoglobulin]"
      },
      {
        "code" : "2282528",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin Injection [Thymoglobulin]"
      },
      {
        "code" : "2376942",
        "display" : "ursodiol 400 MG Oral Capsule"
      },
      {
        "code" : "2477892",
        "display" : "ursodiol 200 MG [Reltone]"
      },
      {
        "code" : "2477896",
        "display" : "ursodiol 200 MG Oral Capsule [Reltone]"
      },
      {
        "code" : "2477897",
        "display" : "ursodiol 400 MG [Reltone]"
      },
      {
        "code" : "2477898",
        "display" : "ursodiol 400 MG Oral Capsule [Reltone]"
      },
      {
        "code" : "284679",
        "display" : "Campath"
      },
      {
        "code" : "360513",
        "display" : "ursodiol 250 MG"
      },
      {
        "code" : "412174",
        "display" : "ursodiol 200 MG Oral Capsule"
      },
      {
        "code" : "452499",
        "display" : "ursodiol 200 MG"
      },
      {
        "code" : "452500",
        "display" : "ursodiol 400 MG"
      },
      {
        "code" : "828265",
        "display" : "1 ML alemtuzumab 30 MG/ML Injection"
      },
      {
        "code" : "828267",
        "display" : "1 ML alemtuzumab 30 MG/ML Injection [Campath]"
      },
      {
        "code" : "858328",
        "display" : "ursodiol 300 MG"
      },
      {
        "code" : "858329",
        "display" : "ursodiol 300 MG Oral Tablet"
      },
      {
        "code" : "858330",
        "display" : "ursodiol 150 MG"
      },
      {
        "code" : "858332",
        "display" : "ursodiol 50 MG/ML"
      },
      {
        "code" : "858333",
        "display" : "ursodiol 50 MG/ML Oral Suspension"
      },
      {
        "code" : "858335",
        "display" : "ursodiol 150 MG Oral Tablet"
      },
      {
        "code" : "858732",
        "display" : "ursodiol 500 MG"
      },
      {
        "code" : "858733",
        "display" : "ursodiol 500 MG Oral Tablet"
      },
      {
        "code" : "858734",
        "display" : "ursodiol 500 MG [Urso Forte]"
      },
      {
        "code" : "858735",
        "display" : "ursodiol 500 MG Oral Tablet [Urso Forte]"
      },
      {
        "code" : "858744",
        "display" : "ursodiol 250 MG Oral Capsule"
      },
      {
        "code" : "858745",
        "display" : "ursodiol 250 MG [Urso]"
      },
      {
        "code" : "858747",
        "display" : "ursodiol 300 MG Oral Capsule"
      },
      {
        "code" : "858748",
        "display" : "ursodiol 300 MG [Actigall]"
      },
      {
        "code" : "858749",
        "display" : "ursodiol 300 MG Oral Capsule [Actigall]"
      },
      {
        "code" : "858751",
        "display" : "ursodiol 250 MG Oral Tablet"
      },
      {
        "code" : "858752",
        "display" : "ursodiol 250 MG Oral Tablet [Urso]"
      },
      {
        "code" : "91601",
        "display" : "lymphocyte immune globulin, anti-thymocyte globulin, equine"
      },
      {
        "code" : "973",
        "display" : "antilymphocyte immunoglobulin"
      }]
    }]
  }
}

```
