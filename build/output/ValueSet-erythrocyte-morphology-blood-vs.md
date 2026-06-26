# Erythrocyte morphology panel - Blood (58408-6) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Erythrocyte morphology panel - Blood (58408-6)**

## ValueSet: Erythrocyte morphology panel - Blood (58408-6) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/erythrocyte-morphology-blood-vs | *Version*:0.1.11 |
| Draft as of 2026-06-25 | *Computable Name*:ErythrocyteMorphologyBloodVS |

 
Erythrocyte morphology panel - Blood (58408-6) 

 **References** 

* Included into [SmearMorphologyBloodVS](ValueSet-smear-morphology-blood-vs.md)

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
  "id" : "erythrocyte-morphology-blood-vs",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ValueSet/erythrocyte-morphology-blood-vs",
  "version" : "0.1.11",
  "name" : "ErythrocyteMorphologyBloodVS",
  "title" : "Erythrocyte morphology panel - Blood (58408-6)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-25T19:24:07-05:00",
  "publisher" : "The Medical College of Wisconsin, Inc. and NMDP",
  "contact" : [
    {
      "name" : "The Medical College of Wisconsin, Inc. and NMDP",
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
  "description" : "Erythrocyte morphology panel - Blood (58408-6)",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "7789-1",
            "display" : "Acanthocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "702-1",
            "display" : "Anisocytosis [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "703-9",
            "display" : "Basophilic stippling [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10371-3",
            "display" : "Bite cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10372-1",
            "display" : "Blister cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7790-9",
            "display" : "Burr cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "11280-5",
            "display" : "Cabot rings [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7791-7",
            "display" : "Dacrocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "11274-8",
            "display" : "Elliptocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "49121-7",
            "display" : "Erythrocyte inclusion bodies [Identifier] in Blood"
          },
          {
            "code" : "10379-6",
            "display" : "Erythrocytes.dual population [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10373-9",
            "display" : "Fragments [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "716-1",
            "display" : "Heinz bodies [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10374-7",
            "display" : "Helmet cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7793-3",
            "display" : "Howell-Jolly bodies [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "33249-4",
            "display" : "Hyperchromia [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "728-6",
            "display" : "Hypochromia [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10375-4",
            "display" : "Irregularly contracted cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "738-5",
            "display" : "Macrocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10376-2",
            "display" : "Oval macrocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "741-9",
            "display" : "Microcytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "33364-1",
            "display" : "Normochromic [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "33363-3",
            "display" : "Normocytic [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7794-1",
            "display" : "Normocytic/Normochromic polychromasia [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "774-0",
            "display" : "Ovalocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7795-8",
            "display" : "Pappenheimer bodies [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10377-0",
            "display" : "Pencil cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "779-9",
            "display" : "Poikilocytosis [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10378-8",
            "display" : "Polychromasia [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "50260-9",
            "display" : "Prekeratocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "33044-9",
            "display" : "Pyknosis [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "7797-4",
            "display" : "Rouleaux [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "800-3",
            "display" : "Schistocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "801-1",
            "display" : "Sickle cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "802-9",
            "display" : "Spherocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10380-4",
            "display" : "Stomatocytes [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "10381-2",
            "display" : "Target cells [Presence] in Blood by Light microscopy"
          },
          {
            "code" : "6742-1",
            "display" : "Erythrocyte morphology finding [Identifier] in Blood"
          }
        ]
      }
    ]
  }
}

```
