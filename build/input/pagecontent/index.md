> This Implementation Guide is a CIBMTR Standard for Trial Use (STU). 
> It is expected to undergo changes as we learn from experiences with our transplant center partners.
{:.stu-note}

> This Implementation Guide is designed to use the [FHIR Version R4]. 
> For information on submitting to our Direct FHIR endpoints using [FHIR Version STU3], see the 
> [Direct FHIR for STU3 Guide].
{:.blockquote.fhir-version-note}
 
This FHIR Implementation Guide (IG) describes how to report transplant-related data to CIBMTR via HL7&#174; FHIR&#174;.   
  
### Introduction
  
The [Center for International Blood &amp; Marrow Transplant Research® (CIBMTR®)]
is a research collaboration between the [National Marrow Donor Program® (NMDP)/Be The Match®]
and the [Medical College of Wisconsin (MCW)]. 
The CIBMTR collaborates with the global scientific community to advance hematopoietic cell 
transplantation (HCT) and other cellular therapy worldwide to increase survival and enrich 
quality of life for patients. 


The CIBMTR facilitates critical observational and interventional research through scientific 
and statistical expertise, a large network of transplant centers, and a unique and extensive clinical outcomes database.
CIBMTR collects data for HCT recipients using a web-based manual data entry system 
([FormsNet3]) 
and an automated messaging system 
([A Growable Network Information System (AGNIS)]).


CIBMTR is now collecting data through the [HL7 Fast Healthcare Interoperability Resources&#174; (FHIR&#174;)] standard. 
This IG describes the technical specification that CIBMTR accepts from third party clients producing FHIR resources for reporting HCT data.
It is primarily based on the [US Core FHIR IG] which defines the minimum conformance 
requirements for accessing patient data. Profiles from the [minimal Common Oncology Data Elements (mCODE) IG], which describes 
the a core set of structured data elements for oncology, are also used.


This IG is focused on information required for sending Patient demographic data that is necessary for creating or retrieving a CIBMTR 
Research ID (CRID), and for reporting Patient resources with a known CRID. It also includes reporting laboratory observations,
focusing on a set of variables that have been identified as a priority for the CIBMTR Data Transformation Initiative in Fiscal Year 2022. And we have 
begun describing how medication-related resources may be reported, specifically in the context of [CIBMTR Form 2400 (Pre-TED)]. Future versions of this IG will include
other FHIR resources such as Condition, Procedure, Encounter, EpisdoeOfCare, etc.
  
### Guidance
Guidance on connecting to and sending data to the Direct FHIR API is found in the links below.

* [Connecting and Access]
  * High-level overview of the recommended workflow to connect to the API
* [API Endpoints]
  * A table of API endpoint to get access tokens, assign a CRID, and submit FHIR resources to development and production work
* [Access Credentials]
  * Steps to request security tokens necessary for any interaction with the API
* [CRID Assignment]
  * How to assign a CRID for Patient. This uses a non-FHIR API to submit patient demographic data to CIBMTR. The service will either match an existing patient, or create a new one if no match is found. The CRID is returned to the client.
* [Laboratory Observations]
  * Description of how to send lab values in FHIR Observations.
* [Medications]
  * Description of how to send medication-related FHIR resources 
* [Bundles]
  * How to send a FHIR bundle containing multiple FHIR Resources
* [Example code]
  * Example code, mostly in Python for now

### Highlighted Artifacts

#### Profiles

* [CIBMTR Patient] - derived from US-Core
* [Laboratory Observation Results] - derived from US-Core
  * [Laboratory Observation for Priority Variables] - derived from the general CIBMTR lab Observation, but bound to the FY2022 priority ValueSet
* Medication-related Profiles
  * [MedicationRequest] - derived from mCode
  * [Medication] - derived from US-Core
    * [Mobilizing Agent Medication]
    * [Preprative Regimen Medications]
    * [Additional Drugs in Peri-Transplant Period]
    * [GVHD Prophylaxis Medication]
    * [Planned Post-HCT Disease Therapy Medication]
    * [Prior Exposure Medication]


#### ValueSets
* LOINC (used with Observation)
  * [CIBMTR Priority Variables for FY22]
* RxNorm (used in medication-related resources)
  * [Mobilizing Agents (auto only)]
  * [Prep Regimen]
  * [Additional Drugs in Peri-Transplant Period]
  * [GVHD Prophylaxis]
  * [Post-HCT Disease Therapy Planned]
  * [Prior Exposure: Potential Study Eligibility]
  * [All Form 2400 Medications]

{% include link-list.md %}