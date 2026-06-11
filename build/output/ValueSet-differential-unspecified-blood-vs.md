# Differential panel, method unspecified - Blood (69738-3) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Differential panel, method unspecified - Blood (69738-3)**

## ValueSet: Differential panel, method unspecified - Blood (69738-3) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/differential-unspecified-blood-vs | *Version*:0.1.11 |
| Draft as of 2026-06-11 | *Computable Name*:DifferentialUnspecifiedBloodVS |

 
Differential panel, method unspecified - Blood (69738-3) 

 **References** 

* Included into [CBCWDifferentialUnspecifiedBloodVS](ValueSet-cbc-w-differential-unspecified-blood-vs.md)

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
  "id" : "differential-unspecified-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/differential-unspecified-blood-vs",
  "version" : "0.1.11",
  "name" : "DifferentialUnspecifiedBloodVS",
  "title" : "Differential panel, method unspecified - Blood (69738-3)",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Differential panel, method unspecified - Blood (69738-3)",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "26464-8",
            "display" : "Leukocytes [#/volume] in Blood"
          },
          {
            "code" : "30180-4",
            "display" : "Basophils/100 leukocytes in Blood"
          },
          {
            "code" : "26444-0",
            "display" : "Basophils [#/volume] in Blood"
          },
          {
            "code" : "34911-8",
            "display" : "Immature basophils/100 leukocytes in Blood"
          },
          {
            "code" : "34910-0",
            "display" : "Immature basophils [#/volume] in Blood"
          },
          {
            "code" : "26446-5",
            "display" : "Blasts/100 leukocytes in Blood"
          },
          {
            "code" : "30376-8",
            "display" : "Blasts [#/volume] in Blood"
          },
          {
            "code" : "26450-7",
            "display" : "Eosinophils/100 leukocytes in Blood"
          },
          {
            "code" : "26449-9",
            "display" : "Eosinophils [#/volume] in Blood"
          },
          {
            "code" : "34913-4",
            "display" : "Immature eosinophils/100 leukocytes in Blood"
          },
          {
            "code" : "34912-6",
            "display" : "Immature eosinophils [#/volume] in Blood"
          },
          {
            "code" : "30395-8",
            "display" : "Granulocytes/100 leukocytes in Blood"
          },
          {
            "code" : "30394-1",
            "display" : "Granulocytes [#/volume] in Blood"
          },
          {
            "code" : "35058-7",
            "display" : "Hairy cells/100 leukocytes in Blood"
          },
          {
            "code" : "30397-4",
            "display" : "Hairy cells [#/volume] in Blood"
          },
          {
            "code" : "26463-0",
            "display" : "Large unstained cells/100 leukocytes in Blood"
          },
          {
            "code" : "26462-2",
            "display" : "Large unstained cells [#/volume] in Blood"
          },
          {
            "code" : "26471-3",
            "display" : "Leukocytes other/100 leukocytes in Blood"
          },
          {
            "code" : "30406-3",
            "display" : "Leukocytes other [#/volume] in Blood"
          },
          {
            "code" : "34922-5",
            "display" : "Lymphoblasts/100 leukocytes in Blood"
          },
          {
            "code" : "35050-4",
            "display" : "Lymphoblasts [#/volume] in Blood"
          },
          {
            "code" : "26478-8",
            "display" : "Lymphocytes/100 leukocytes in Blood"
          },
          {
            "code" : "26474-7",
            "display" : "Lymphocytes [#/volume] in Blood"
          },
          {
            "code" : "30413-9",
            "display" : "Abnormal lymphocytes/100 leukocytes in Blood"
          },
          {
            "code" : "30412-1",
            "display" : "Abnormal lymphocytes [#/volume] in Blood"
          },
          {
            "code" : "13046-8",
            "display" : "Variant lymphocytes/100 leukocytes in Blood"
          },
          {
            "code" : "26477-0",
            "display" : "Variant lymphocytes [#/volume] in Blood"
          },
          {
            "code" : "30420-4",
            "display" : "Large granular lymphocytes/100 leukocytes in Blood"
          },
          {
            "code" : "35082-7",
            "display" : "Large granular lymphocytes [#/volume] in Blood"
          },
          {
            "code" : "34921-7",
            "display" : "Lymphocytes Plasmacytoid/100 leukocytes in Blood"
          },
          {
            "code" : "35039-7",
            "display" : "Lymphocytes Plasmacytoid [#/volume] in Blood"
          },
          {
            "code" : "30423-8",
            "display" : "Lymphoma cells/100 leukocytes in Blood"
          },
          {
            "code" : "30422-0",
            "display" : "Lymphoma cells [#/volume] in Blood"
          },
          {
            "code" : "34915-9",
            "display" : "Malignant cells/100 leukocytes in Blood"
          },
          {
            "code" : "34914-2",
            "display" : "Malignant cells [#/volume] in Blood"
          },
          {
            "code" : "28541-1",
            "display" : "Metamyelocytes/100 leukocytes in Blood"
          },
          {
            "code" : "30433-7",
            "display" : "Metamyelocytes [#/volume] in Blood"
          },
          {
            "code" : "34923-3",
            "display" : "Monoblasts/100 leukocytes in Blood"
          },
          {
            "code" : "35029-8",
            "display" : "Monoblasts [#/volume] in Blood"
          },
          {
            "code" : "26485-3",
            "display" : "Monocytes/100 leukocytes in Blood"
          },
          {
            "code" : "26484-6",
            "display" : "Monocytes [#/volume] in Blood"
          },
          {
            "code" : "30441-0",
            "display" : "Monocytes Abnormal/100 leukocytes in Blood"
          },
          {
            "code" : "30440-2",
            "display" : "Monocytes Abnormal [#/volume] in Blood"
          },
          {
            "code" : "34925-8",
            "display" : "Immature monocytes/100 leukocytes in Blood"
          },
          {
            "code" : "34924-1",
            "display" : "Immature monocytes [#/volume] in Blood"
          },
          {
            "code" : "30445-1",
            "display" : "Myeloblasts/100 leukocytes in Blood"
          },
          {
            "code" : "30444-4",
            "display" : "Myeloblasts [#/volume] in Blood"
          },
          {
            "code" : "26498-6",
            "display" : "Myelocytes/100 leukocytes in Blood"
          },
          {
            "code" : "30446-9",
            "display" : "Myelocytes [#/volume] in Blood"
          },
          {
            "code" : "26511-6",
            "display" : "Neutrophils/100 leukocytes in Blood"
          },
          {
            "code" : "26499-4",
            "display" : "Neutrophils [#/volume] in Blood"
          },
          {
            "code" : "26508-2",
            "display" : "Band form neutrophils/100 leukocytes in Blood"
          },
          {
            "code" : "26507-4",
            "display" : "Band form neutrophils [#/volume] in Blood"
          },
          {
            "code" : "30450-1",
            "display" : "Neutrophils.hypersegmented/100 leukocytes in Blood"
          },
          {
            "code" : "30449-3",
            "display" : "Neutrophils.hypersegmented [#/volume] in Blood"
          },
          {
            "code" : "30451-9",
            "display" : "Segmented neutrophils [#/volume] in Blood"
          },
          {
            "code" : "26505-8",
            "display" : "Segmented neutrophils/100 leukocytes in Blood"
          },
          {
            "code" : "34917-5",
            "display" : "Plasma cell precursor/100 leukocytes in Blood"
          },
          {
            "code" : "34916-7",
            "display" : "Plasma cell precursor [#/volume] in Blood"
          },
          {
            "code" : "13047-6",
            "display" : "Plasma cells/100 leukocytes in Blood"
          },
          {
            "code" : "30458-4",
            "display" : "Plasma cells [#/volume] in Blood"
          },
          {
            "code" : "34999-3",
            "display" : "Polymorphonuclear cells/100 leukocytes in Blood"
          },
          {
            "code" : "35003-3",
            "display" : "Polymorphonuclear cells [#/volume] in Blood"
          },
          {
            "code" : "30465-9",
            "display" : "Prolymphocytes/100 leukocytes in Blood"
          },
          {
            "code" : "30464-2",
            "display" : "Prolymphocytes [#/volume] in Blood"
          },
          {
            "code" : "30466-7",
            "display" : "Promonocytes/100 leukocytes in Blood"
          },
          {
            "code" : "34926-6",
            "display" : "Promonocytes [#/volume] in Blood"
          },
          {
            "code" : "26524-9",
            "display" : "Promyelocytes/100 leukocytes in Blood"
          },
          {
            "code" : "26523-1",
            "display" : "Promyelocytes [#/volume] in Blood"
          },
          {
            "code" : "34919-1",
            "display" : "Sezary cells/100 leukocytes in Blood"
          },
          {
            "code" : "34918-3",
            "display" : "Sezary cells [#/volume] in Blood"
          },
          {
            "code" : "34992-8",
            "display" : "Smudge cells/100 leukocytes in Blood"
          },
          {
            "code" : "34993-6",
            "display" : "Smudge cells [#/volume] in Blood"
          },
          {
            "code" : "33255-1",
            "display" : "Cell Fractions/Differential [Interpretation] in Blood"
          }
        ]
      }
    ]
  }
}

```
