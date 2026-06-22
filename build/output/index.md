# Home - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/ImplementationGuide/nmdp.fhir.cibmtr-reporting | *Version*:0.1.11 |
| Draft as of 2026-06-21 | *Computable Name*:CIBMTRReporting |

> This Implementation Guide is a CIBMTR Standard for Trial Use (STU). It is expected to undergo changes as we learn from experiences with our transplant center partners.

> This Implementation Guide is designed to use the[FHIR Version R4](http://hl7.org/fhir/R4/index.html). For information on submitting to our Direct FHIR endpoints using[FHIR Version STU3](http://hl7.org/fhir/STU3/index.html), see the[Direct FHIR for STU3 Guide](CIBMTR_Direct_FHIR_API_Connection_Guide_STU3.pdf).

This FHIR Implementation Guide (IG) describes how to report transplant-related data to CIBMTR via HL7® FHIR®.

### Introduction

The [Center for International Blood & Marrow Transplant Research® (CIBMTR®)](https://www.cibmtr.org) is a research collaboration between the [NMDP](https://www.nmdp.org/) and the [Medical College of Wisconsin (MCW)](https://www.mcw.edu). The CIBMTR collaborates with the global scientific community to advance hematopoietic cell transplantation (HCT) and other cellular therapy worldwide to increase survival and enrich quality of life for patients.

The CIBMTR facilitates critical observational and interventional research through scientific and statistical expertise, a large network of transplant centers, and a unique and extensive clinical outcomes database. CIBMTR collects data for HCT recipients using a web-based manual data entry system ([FormsNet3](https://www.cibmtr.org/DataManagement/SystemApplications/FormsNet3)) and an automated messaging system ([A Growable Network Information System (AGNIS)](https://www.cibmtr.org/DataManagement/SystemApplications/AGNIS/Pages/default.aspx)).

CIBMTR is now collecting data through the [HL7 Fast Healthcare Interoperability Resources® (FHIR®)](http://hl7.org/fhir) standard. This IG describes the technical specification that CIBMTR accepts from third party clients producing FHIR resources for reporting HCT data. It is primarily based on the [US Core FHIR IG](https://www.hl7.org/fhir/us/core/) which defines the minimum conformance requirements for accessing patient data. Profiles from the [minimal Common Oncology Data Elements (mCODE) IG](https://hl7.org/fhir/us/mcode/), which describes the a core set of structured data elements for oncology, are also used.

This IG is focused on information required for sending Patient demographic data that is necessary for creating or retrieving a CIBMTR Research ID (CRID), and for reporting Patient resources with a known CRID. It also includes reporting laboratory observations, focusing on a set of variables that have been identified as a priority for the CIBMTR Data Transformation Initiative in Fiscal Year 2022. And we have begun describing how medication-related resources may be reported, specifically in the context of [CIBMTR Form 2400 (Pre-TED)](https://www.cibmtr.org/manuals/fim/1/en/topic/2400). Future versions of this IG will include other FHIR resources such as Condition, Procedure, Encounter, EpisdoeOfCare, etc.

### Implementation Guidance and Profiles

Guidance on connecting to and sending data to the Direct FHIR API is found in the links below.

* [Connecting and Access](Connection-Guide-R4.md) 
* High-level overview of the recommended workflow to connect to the API
 
* [API Endpoints](Endpoints.md) 
* A table of API endpoint to get access tokens, assign a CRID, and submit FHIR resources to development and production work
 
* [Access Credentials](Access-Credentials.md) 
* Steps to request security tokens necessary for any interaction with the API
 
* [CRID Assignment_FHIR API](CRID-Assignment_FHIR.md) 
* Description of how to assign a CRID for a patient using a FHIR API to submit patient demographic data to CIBMTR.
 
* [CIBMTR Patient](StructureDefinition-cibmtr-patient.md) 
* Description of how to send patient information in FHIR resources
 
* [CIBMTR Laboratory Observations](StructureDefinition-cibmtr-observation-lab.md) 
* Description of how to send lab values in FHIR Observations.
 
* [CIBMTR Medications](StructureDefinition-cibmtr-medications.md) 
* Description of how to send medication-related FHIR resources
 
* [CIBMTR Vital Signs](StructureDefinition-cibmtr-vital-signs.md) 
* Description of how to send vital sign values in FHIR resources
 
* [Bundles](Bundles.md) 
* How to send a FHIR bundle containing multiple FHIR Resources
 
* [Example code](Example-Code.md) 
* Example code, mostly in Python for now
 

### CIBMTR Program-Specific Profiles

* Laboratory Observation Profile 
* [Laboratory Observation for Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.md) - derived from the general CIBMTR lab Observation, but bound to the FY2022 priority ValueSet
 
* Medication Profile 
* [MedicationRequest](StructureDefinition-cibmtr-medication-request.md) - derived from mCode
* [Medication](StructureDefinition-cibmtr-medication.md) - derived from US-Core 
* [Mobilizing Agent Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.md)
* [Preprative Regimen Medications](StructureDefinition-cibmtr-prep-regimen-medication.md)
* [Additional Drugs in Peri-Transplant Period](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.4/expansion/Latest)
* [GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.md)
* [Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.md)
* [Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.md)
 
 
* Vital Signs Profile 
* [CIBMTR Vital Signs-Height](StructureDefinition-cibmtr-vital-signs-height.md) - derived from US-Core
* [CIBMTR Vital Signs-Weight](StructureDefinition-cibmtr-vital-signs-weight.md) - derived from US-Core
 

### ValueSets

* Observation Resource 
* Laboratory Observation resource [CIBMTR Priority Variables for FY22](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.7/expansion/Latest)
* Vital Signs Observation resource [Vital Signs Value Set](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.1/expansion/Latest)
 
* Medication Resource 
* [Mobilizing Agents (auto only)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.2/expansion/Latest)
* [Prep Regimen](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.6/expansion/Latest)
* [Additional Drugs in Peri-Transplant Period](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.4/expansion/Latest)
* [GVHD Prophylaxis](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.8/expansion/Latest)
* [Post-HCT Disease Therapy Planned](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.9/expansion/Latest)
* [Prior Exposure: Potential Study Eligibility](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.10/expansion/Latest)
* [All Form 2400 Medications](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1295.11/expansion/Latest)
 



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "nmdp.fhir.cibmtr-reporting",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/ImplementationGuide/nmdp.fhir.cibmtr-reporting",
  "version" : "0.1.11",
  "name" : "CIBMTRReporting",
  "title" : "CIBMTR Reporting Implementation Guide",
  "status" : "draft",
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
  "description" : "How to report HCT data to CIBMTR",
  "packageId" : "nmdp.fhir.cibmtr-reporting",
  "license" : "Apache-2.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.2.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.3.0"
    },
    {
      "id" : "hl7_fhir_us_core",
      "uri" : "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core",
      "packageId" : "hl7.fhir.us.core",
      "version" : "8.0.0"
    },
    {
      "id" : "mcode",
      "uri" : "http://hl7.org/fhir/us/mcode/ImplementationGuide/hl7.fhir.us.mcode",
      "packageId" : "hl7.fhir.us.mcode",
      "version" : "4.0.0"
    },
    {
      "id" : "hl7_fhir_uv_genomics_reporting",
      "uri" : "http://hl7.org/fhir/uv/genomics-reporting/ImplementationGuide/hl7.fhir.uv.genomics-reporting",
      "packageId" : "hl7.fhir.uv.genomics-reporting",
      "version" : "2.0.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "Trial Use 1"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://cdebrowser.nci.nih.gov"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://iscn.karger.com"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://fhir.nmdp.org/ig/cibmtr-reporting/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.9.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2020+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "Trial Use 1"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "http://cdebrowser.nci.nih.gov"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://iscn.karger.com"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://fhir.nmdp.org/ig/cibmtr-reporting/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ABOBloodGroupObservationLOINC"
        },
        "name" : "ABOBloodGroupObservationLOINC",
        "description" : "ABO group [Type] in Blood (883-9) with LOINC answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ABOBloodGroupObservationSNOMED"
        },
        "name" : "ABOBloodGroupObservationSNOMED",
        "description" : "ABO group [Type] in Blood (883-9) with SNOMED answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ABORhObservationLOINC"
        },
        "name" : "ABORhObservationLOINC",
        "description" : "ABO and Rh group [Type] in Blood (882-1) with LOINC answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/ABORhObservationSNOMED"
        },
        "name" : "ABORhObservationSNOMED",
        "description" : "ABO and Rh group [Type] in Blood (882-1) with SNOMED CT answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/AlbuminObservation"
        },
        "name" : "AlbuminObservation",
        "description" : "Albumin [Mass/volume] in Serum or Plasma",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/auto-differential-blood-vs"
        },
        "name" : "Auto Differential panel - Blood (57023-4)",
        "description" : "Auto Differential panel - Blood (57023-4)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BasophilsObservation"
        },
        "name" : "BasophilsObservation",
        "description" : "Basophils/100 leukocytes in Blood",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BodyHeight"
        },
        "name" : "BodyHeight",
        "description" : "Body Height (8302-2)",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-vital-signs-height"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BodyWeight"
        },
        "name" : "BodyWeight",
        "description" : "Body Weight (29463-7)",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-vital-signs-weight"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cbc-blood-automated-vs"
        },
        "name" : "CBC panel - Blood by Automated count (58410-2)",
        "description" : "CBC panel - Blood by Automated count (58410-2)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cbc-w-auto-differential-blood-vs"
        },
        "name" : "CBC W Auto Differential panel - Blood (57021-8)",
        "description" : "CBC W Auto Differential panel - Blood (57021-8)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cbc-w-differential-unspecified-blood-vs"
        },
        "name" : "CBC W Differential panel, method unspecified - Blood (69742-5)",
        "description" : "CBC W Differential panel, method unspecified - Blood (69742-5)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cbc-w-ordered-manual-differential-blood-vs"
        },
        "name" : "CBC W Ordered Manual Differential panel - Blood (57782-5)",
        "description" : "CBC W Ordered Manual Differential panel - Blood (57782-5)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-additional-peri-transplant-medication"
        },
        "name" : "CIBMTR Additional Drugs in Peri-Transplant Period",
        "description" : "CIBMTR Additional Drugs Given in the Peri-Transplant Period. Drugs may be given during the peri-transplant period to prevent transplant-related complications, such as liver injuries or to facilitate engraftment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/cibmtr-ancestry-cs"
        },
        "name" : "CIBMTR Ancestry CodeSystem",
        "description" : "A code system for CIBMTR ancestry information.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-ancestry"
        },
        "name" : "CIBMTR Ancestry Extension",
        "description" : "Container extension holding US Core Race plus CIBMTR ancestry codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cibmtr-ancestry-vs"
        },
        "name" : "CIBMTR Ancestry ValueSet",
        "description" : "A value set for CIBMTR ancestry information.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-cytogenetics"
        },
        "name" : "CIBMTR Cytogenetics Profile",
        "description" : "CIBMTR Cytogenetics Profile to capture ISCN",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-gvhd-prophylaxis-medication"
        },
        "name" : "CIBMTR GVHD Prophylaxis Medication",
        "description" : "CIBMTR GVHD Prophylaxis Medication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-medication"
        },
        "name" : "CIBMTR Medication (us-core)",
        "description" : "CIBMTR Medication (us-core)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-medication-administration"
        },
        "name" : "CIBMTR Medication Administration (mcode)",
        "description" : "CIBMTR Medication Administration (mcode)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-medications"
        },
        "name" : "CIBMTR Medication Related (mcode)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-medication-request"
        },
        "name" : "CIBMTR Medication Request (mcode)",
        "description" : "CIBMTR Medication Request (mcode)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-mobilizing-agent-medication"
        },
        "name" : "CIBMTR Mobilizing Agents Medication",
        "description" : "CIBMTR Mobilizing Agents (auto only) Medication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-observation-lab"
        },
        "name" : "CIBMTR Observation Laboratory Results Profile (us-core)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-obs-priority-variables"
        },
        "name" : "CIBMTR Observation Laboratory Results: Priority Variables",
        "description" : "CIBMTR Observation Laboratory Results: Priority Variables",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/patient"
        },
        "name" : "CIBMTR Patient Ancestry Value Set",
        "description" : "US Core Race Categories (Intensional).\r\n1.\nThis value set is used by me",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-patient"
        },
        "name" : "CIBMTR Patient Profile (us-core)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-post-hct-disease-therapy-planned-medication"
        },
        "name" : "CIBMTR Planned Post-HCT Disease Therapy Medication",
        "description" : "CIBMTR Planned Post-HCT Disease Therapy Medication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-prep-regimen-medication"
        },
        "name" : "CIBMTR Prep Regimen Medication",
        "description" : "CIBMTR Pre-HCT Preparative Regimen (Conditioning) Medication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-prior-exposure-medication"
        },
        "name" : "CIBMTR Prior Exposure Medication",
        "description" : "CIBMTR Prior Exposure: Potential Study Eligibility Medication",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cibmtr-priority-variables-2021"
        },
        "name" : "CIBMTR Priority Variables Value Set (FY21)",
        "description" : "Priority Variables for CIBMTR (FY21)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cibmtr-priority-variables-2022"
        },
        "name" : "CIBMTR Priority Variables Value Set (FY22)",
        "description" : "Priority Variables for CIBMTR (FY22)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cibmtr-priority-variables-epic-2021"
        },
        "name" : "CIBMTR Priority Variables Value Set for Epic App (FY21)",
        "description" : "Priority Variables for Epic CIBMTR Reporting App (FY21)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/cibmtr-cs-vitalsigns"
        },
        "name" : "CIBMTR Vital Signs Concept Set",
        "description" : "CIBMTR Vital Signs Concept Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-vital-signs"
        },
        "name" : "CIBMTR Vital Signs Results Profile (US Core)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/vital-signs"
        },
        "name" : "CIBMTR Vital Signs Value Set",
        "description" : "CIBMTR Vital Signs Value Set",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-vital-signs-height"
        },
        "name" : "CIBMTR Vital Signs-Height Profile (us-core)",
        "description" : "CIBMTR Vital Signs-Height Profile (us-core)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/cibmtr-vital-signs-weight"
        },
        "name" : "CIBMTR Vital Signs-Weight Profile (us-core)",
        "description" : "CIBMTR Vital Signs-Weight Profile (us-core)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/CMVDNAViralLoadCopiesmL"
        },
        "name" : "CMVDNAViralLoadCopiesmL",
        "description" : "Cytomegalovirus DNA [#/volume] (viral load) in Bronchoalveolar lavage by NAA with probe detection (49349-4)",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/CMVDNAViralLoadIUmL"
        },
        "name" : "CMVDNAViralLoadIUmL",
        "description" : "Cytomegalovirus DNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection (72493-0)",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/CMVIgAbPresenceSNOMED"
        },
        "name" : "CMVIgAbPresenceSNOMED",
        "description" : "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with SNOMED CT answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/CMVIgGAbPresenceLOINC"
        },
        "name" : "CMVIgGAbPresenceLOINC",
        "description" : "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay (13949-3) with LOINC answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/CMVIgMAbPresenceLOINC"
        },
        "name" : "CMVIgMAbPresenceLOINC",
        "description" : "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with LOINC answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/CMVIgMAbPresenceSNOMED"
        },
        "name" : "CMVIgMAbPresenceSNOMED",
        "description" : "Cytomegalovirus IgM Ab [Presence] in Serum or Plasma by Immunoassay (24119-0) with SNOMED answer",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/Cytogenetics-Example-1"
        },
        "name" : "Cytogenetics-Example-1",
        "description" : "Example of ISCN report",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-cytogenetics"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/differential-unspecified-blood-vs"
        },
        "name" : "Differential panel, method unspecified - Blood (69738-3)",
        "description" : "Differential panel, method unspecified - Blood (69738-3)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/hematopoietic-disorder-vs"
        },
        "name" : "Disorders of hematopoietic structure",
        "description" : "SNOMED: Disorders of hematopoietic structure",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/EosinophilsObservation"
        },
        "name" : "EosinophilsObservation",
        "description" : "Eosinophils observation, #/volume in Blood",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/erythrocyte-morphology-blood-vs"
        },
        "name" : "Erythrocyte morphology panel - Blood (58408-6)",
        "description" : "Erythrocyte morphology panel - Blood (58408-6)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/gvhd-icd10-codes"
        },
        "name" : "GVHD ICD-10 Codes",
        "description" : "GVHD ICD-10 Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/gvhd-sct-codes"
        },
        "name" : "GVHD SNOMED CT Codes",
        "description" : "GVHD SNOMED CT Codes",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/gvhd-all-valueset"
        },
        "name" : "GVHD Type Value Set",
        "description" : "Permissible values for types of Graft vs Host Disease, from SNOMED CT and ICD-10",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/HemoglobinObservation"
        },
        "name" : "HemoglobinObservation",
        "description" : "Hemoglobin [Mass/volume] in Blood",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/leukocyte-morphology-blood-vs"
        },
        "name" : "Leukocyte morphology panel - Blood (58407-8)",
        "description" : "Leukocyte morphology panel - Blood (58407-8)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/LeukocytesObservation"
        },
        "name" : "LeukocytesObservation",
        "description" : "Leukocytes observation",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-observation-lab"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/manual-differential-blood-vs"
        },
        "name" : "Manual Differential panel - Blood (24318-8)",
        "description" : "Manual Differential panel - Blood (24318-8)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-Cyclophosphamide-Example"
        },
        "name" : "Medication-Cyclophosphamide-Example",
        "description" : "Medication - Cyclophosphamide, 1 G injection",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-Etoposide-Example"
        },
        "name" : "Medication-Etoposide-Example",
        "description" : "Medication - Etoposide (Vepesid) chemo IBPB, 20MG/ML",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-GVHD-Prophylaxis-Example"
        },
        "name" : "Medication-GVHD-Prophylaxis-Example",
        "description" : "Medication - GVHD Prophylaxis Example - Cyclosporine",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-gvhd-prophylaxis-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-Mobilizing-Agent-Example"
        },
        "name" : "Medication-Mobilizing-Agent-Example",
        "description" : "Medication - Mobilizing Agents Example - Pegfilgrastim",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-mobilizing-agent-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-Peri-Transplant-Example"
        },
        "name" : "Medication-Peri-Transplant-Example",
        "description" : "Medication - Additional Peri-Transplant Example - Anti-Thymocyte gGobulin",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-additional-peri-transplant-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-Post-HCT-Disease-Therapy-Example"
        },
        "name" : "Medication-Post-HCT-Disease-Therapy-Example",
        "description" : "Medication - Post-HCT Disease Therapy Planned Example - Blinatumomab",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-post-hct-disease-therapy-planned-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-Prep-Regimen-Example"
        },
        "name" : "Medication-Prep-Regimen-Example",
        "description" : "Medication - Pre-HCT Preparatoive Regimen (Conditioning) Example - Pegfilgrastim",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-prep-regimen-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Medication"
          }
        ],
        "reference" : {
          "reference" : "Medication/Medication-PriorExposure-Example"
        },
        "name" : "Medication-PriorExposure-Example",
        "description" : "Medication - Prior Exposure: Potential Study Eligibility Example - Mogamulizumab",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-prior-exposure-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationAdministration"
          }
        ],
        "reference" : {
          "reference" : "MedicationAdministration/MedicationAdministration-Example1"
        },
        "name" : "MedicationAdministration-Example1",
        "description" : "Medication - Medication Administration example using medicationReference - Etoposide",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-administration"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationAdministration"
          }
        ],
        "reference" : {
          "reference" : "MedicationAdministration/MedicationAdministration-Example2"
        },
        "name" : "MedicationAdministration-Example2",
        "description" : "Medication - Medication Administration example using medicationCodeableConcept - Etoposide",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-administration"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MedicationRequest"
          }
        ],
        "reference" : {
          "reference" : "MedicationRequest/MedicationRequest-Etoposide-Example"
        },
        "name" : "MedicationRequest-Etoposide-Example",
        "description" : "Medication Request for Etoposide (Vepesid) chemo IBPB, 20MG/ML",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-medication-request"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/MetamyelocytesObservation"
        },
        "name" : "MetamyelocytesObservation",
        "description" : "Metamyelocytes [Presence] in Blood",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/NeutrophilsObservation"
        },
        "name" : "NeutrophilsObservation",
        "description" : "Neutrophils [#/volume] in Cord blood",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-obs-priority-variables"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/PatientExample1"
        },
        "name" : "PatientExample1",
        "description" : "Patient with CIBMTR CRID",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/PatientExample2"
        },
        "name" : "PatientExample2",
        "description" : "example using CIBMTR center number",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/PatientExample3"
        },
        "name" : "PatientExample3",
        "description" : "Patient with MRN and CRID, Race=White, Ethnicity=Unknown",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/PatientExample4"
        },
        "name" : "PatientExample4",
        "description" : "Patient with CRID and MRN, Race=Black or African American, Ethnicity=Unknown",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/PatientExample5"
        },
        "name" : "PatientExample5",
        "description" : "Patient with CRID & MRN, Race=Mixed, Ethnicity=Not Hispanic or Latino",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/PatientExample6"
        },
        "name" : "PatientExample6",
        "description" : "Patient with CIBMTR CRID",
        "exampleCanonical" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/platelet-morphology-blood-vs"
        },
        "name" : "Platelet morphology panel - Blood (58406-0)",
        "description" : "Platelet morphology panel - Blood (58406-0)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/presence-valueset"
        },
        "name" : "Presence Answer List",
        "description" : "Permissible values for presence",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-addition-peri-transplant-vs"
        },
        "name" : "RxNorm - Additional Drugs in Peri-Transplant Period",
        "description" : "RxNorm codes for Additional Drugs in Peri-Transplant Period",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-alemtuzumab-vs"
        },
        "name" : "RxNorm - Alemtuzumab",
        "description" : "RxNorm codes for Alemtuzumab",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-all-form2400-vs"
        },
        "name" : "RxNorm - All of Form 2400",
        "description" : "RxNorm codes for all of Form 2400",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-anti-thymocyte-globulin-vs"
        },
        "name" : "RxNorm - Anti-Thymocyte Globulin",
        "description" : "RxNorm codes for Anti-Thymocyte Globulin",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-bortezomib-vs"
        },
        "name" : "RxNorm - Bortezomib",
        "description" : "RxNorm codes for Bortezomib",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-busulfan-vs"
        },
        "name" : "RxNorm - Busulfan",
        "description" : "RxNorm codes for Busulfan",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-carmustine-vs"
        },
        "name" : "RxNorm - Carmustine",
        "description" : "RxNorm codes for Carmustine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-cyclophosphamide-vs"
        },
        "name" : "RxNorm - Cyclophosphamide",
        "description" : "RxNorm codes for Cyclophosphamide",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-cytarabine-vs"
        },
        "name" : "RxNorm - Cytarabine",
        "description" : "RxNorm codes for Cytarabine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-defibrotide-vs"
        },
        "name" : "RxNorm - Defibrotide",
        "description" : "RxNorm codes for Defibrotide",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-etoposide-vs"
        },
        "name" : "RxNorm - Etoposide",
        "description" : "RxNorm codes for Etoposide",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-fludarabine-vs"
        },
        "name" : "RxNorm - Fludarabine",
        "description" : "RxNorm codes for Fludarabine",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-gvhd-prophylaxis-vs"
        },
        "name" : "RxNorm - GVHD Prophylaxis",
        "description" : "RxNorm codes for GVHD Prophylaxis",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-melphalan-vs"
        },
        "name" : "RxNorm - Melphalan",
        "description" : "RxNorm codes for Melphalan",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-mobilizing-agents-vs"
        },
        "name" : "RxNorm - Mobilizing Agents (auto only)",
        "description" : "RxNorm codes for Mobilizing Agents (auto only)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-post-hct-disease-therapy-planned-vs"
        },
        "name" : "RxNorm - Post-HCT Disease Therapy Planned",
        "description" : "RxNorm codes for Post-HCT Disease Therapy Planned",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-prep-regimen-vs"
        },
        "name" : "RxNorm - Prep Regimen",
        "description" : "RxNorm codes for Prep Regimen",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-prior-exposure-vs"
        },
        "name" : "RxNorm - Prior Exposure: Potential Study Eligibility",
        "description" : "Prior Exposure: Potential Study Eligibility",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-rituximab-vs"
        },
        "name" : "RxNorm - Rituximab",
        "description" : "RxNorm codes for Rituximab",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-thiotepa-vs"
        },
        "name" : "RxNorm - Thiotepa",
        "description" : "RxNorm codes for Thiotepa",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-treosulfan-vs"
        },
        "name" : "RxNorm - Treosulfan",
        "description" : "RxNorm codes for Treosulfan",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/med-ursodiol-vs"
        },
        "name" : "RxNorm - Ursodiol",
        "description" : "RxNorm codes for Ursodiol",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/smear-morphology-blood-vs"
        },
        "name" : "Smear morphology panel - Blood (34994-4)",
        "description" : "Smear morphology panel - Blood (34994-4)",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/snomed-myelodysplastic-diseases-vs"
        },
        "name" : "SNOMED Myelodysplastic Diseases",
        "description" : "The myelodysplastic syndromes (MDS) are a group of clonal hematopoietic stem cell diseases characterized by cytopenia(s), dysplasia (abnormal growth or development leading to an alteration in size, shape, and organization of the cell) in one or more of the major myeloid cell lines (WBC, RBC, and/or platelets), ineffective hematopoiesis, and an increased risk of developing acute myelogenous leukemia (AML). MDS occurs primarily in older adults, with a median age of 70 years. The majority of recipients present with symptoms related to cytopenias. Most recipients present with anemia requiring RBC transfusions.",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Access-Credentials.html"
            }
          ],
          "nameUrl" : "Access-Credentials.html",
          "title" : "Access Credentials",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Appendices.html"
            }
          ],
          "nameUrl" : "Appendices.html",
          "title" : "Appendices",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Bundles.html"
            }
          ],
          "nameUrl" : "Bundles.html",
          "title" : "Bundles",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Connection-Guide-R4.html"
            }
          ],
          "nameUrl" : "Connection-Guide-R4.html",
          "title" : "Connection Guide R 4",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "CRID-Assignment_FHIR.html"
            }
          ],
          "nameUrl" : "CRID-Assignment_FHIR.html",
          "title" : "CRID Assignment FHIR",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "CRID-Assignment_Non-FHIR.html"
            }
          ],
          "nameUrl" : "CRID-Assignment_Non-FHIR.html",
          "title" : "CRID Assignment Non FHIR",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Cytogenetics.html"
            }
          ],
          "nameUrl" : "Cytogenetics.html",
          "title" : "Cytogenetics",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Direct-FHIR-STU3.html"
            }
          ],
          "nameUrl" : "Direct-FHIR-STU3.html",
          "title" : "Direct FHIR STU 3",
          "generation" : "html"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Endpoints.html"
            }
          ],
          "nameUrl" : "Endpoints.html",
          "title" : "Endpoints",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Example-Code.html"
            }
          ],
          "nameUrl" : "Example-Code.html",
          "title" : "Example Code",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Form-2450.html"
            }
          ],
          "nameUrl" : "Form-2450.html",
          "title" : "Form 2450",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Laboratory-Observations.html"
            }
          ],
          "nameUrl" : "Laboratory-Observations.html",
          "title" : "Laboratory Observations",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Medications.html"
            }
          ],
          "nameUrl" : "Medications.html",
          "title" : "Medications",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Patient.html"
            }
          ],
          "nameUrl" : "Patient.html",
          "title" : "Patient",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "Vital-Signs.html"
            }
          ],
          "nameUrl" : "Vital-Signs.html",
          "title" : "Vital Signs",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
