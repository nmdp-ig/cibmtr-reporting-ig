> Some text about this being a Staandard for Trial Use (STU)
{.stu-note}

> This Implementation Guide is designed to use the R4 version of the HL7&#174; FHIR&#174; standard. 
> For information on submitting to our Direct FHIR endpoints using FHIR STU3, see the 
> [Direct FHIR for STU3 Guide](CIBMTR_Direct_FHIR_API_Connection_Guide_STU3.pdf).
{:.blockquote.fhir-version-note}
 
This FHIR Implementation Guide (IG) describes how to report transplant-related data to CIBMTR via HL7&#174; FHIR&#174;.   
  
### Introduction
  
The [Center for International Blood &amp; Marrow Transplant Research® (CIBMTR®)](https://www.cibmtr.org)
is a research collaboration between the [National Marrow Donor Program® (NMDP)/Be The Match®](https://bethematch.org) 
and the [Medical College of Wisconsin (MCW)](https://www.mcw.edu). 
The CIBMTR collaborates with the global scientific community to advance hematopoietic cell 
transplantation (HCT) and other cellular therapy worldwide to increase survival and enrich 
quality of life for patients. 


The CIBMTR facilitates critical observational and interventional research through scientific 
and statistical expertise, a large network of transplant centers, and a unique and extensive clinical outcomes database.
CIBMTR collects data for HCT recipients using a web-based manual data entry system 
([FormsNet](https://www.cibmtr.org/DataManagement/SystemApplications/FormsNet3)) 
and an automated messaging system 
([A Growable Network Information System (AGNIS)](https://www.cibmtr.org/DataManagement/SystemApplications/AGNIS/Pages/default.aspx)).


CIBMTR is now collecting data through the [HL7 Fast Healthcare Interoperability Resources&#174; (FHIR&#174;)](http://hl7.org/fhir) standard. 
This IG describes the technical specification that CIBMTR accepts from third party clients producing FHIR resources for reporting HCT data.
It is primarily based on the [US Core FHIR IG](https://www.hl7.org/fhir/us/core/) which defines the minimum conformance 
requirements for accessing patient data. Profiles from the [minimal Common Oncology Data Elements (mCODE) IG](https://hl7.org/fhir/us/mcode/), which describes 
the a core set of structured data elements for oncology, are also used.


This IG is focused on information required for sending Patient demographic data that is necessary for creating or retrieving a CIBMTR 
Research ID (CRID), and for reporting Patient resources with a known CRID. It also includes reporting laboratory observations,
focusing on a set of variables that have been identified as a priority for the CIBMTR Data Transformation Initiative in Fiscal Year 2022. And we have 
begun describing how medication-related resources may be reported, specifically in the context of CIBMTR Form 2400. Future versions of this IG will include
other FHIR resources such as Condition, Procedure, Encounter, EpisdoeOfCare, etc.
  

### Guidance
Guidance on connecting to and sending data to the Direct FHIR API is found in the links below.

* [Connecting and Access](Connection-Guide-R4.html)
  * High-level overview of the recommended workflow to connect to the API
* [API Endpoints](Endpoints.html)
  * A table of API endpoint to get access tokens, assign a CRID, and submit FHIR resources to development and production work
* [Access Credentials](Access-Credentials.html)
  * Steps to request security tokens, which are necessary for any interaction with the API
* [CRID Assignment](CRID-Assignment.html)
  * How to assign a CRID for Patient. This uses a non-FHIR API to submit patient demographic data to CIBMTR. The service will either match an existing patient, or create a new one if no match is found. The CRID is returned to the client.
* [Laboratory Observations](Laboratory-Observations.html)
  * Description of how to send lab values in FHIR Observations.
* [Medications](Medications.html)
  * Description of how to send medication-related FHIR resources 
* [Bundles](Bundles.html)
  * How to send a FHIR bundle containing multiple FHIR Resources
* [Example code](Example-Code.html)
  * Example code, mostly in Python for now

### Highlighted Artifacts

#### Profiles

* [CIBMTR Patient](StructureDefinition-cibmtr-patient.html) - derived from US-Core
* [Laboratory Observation Results](StructureDefinition-cibmtr-observation-lab.html) - derived from US-Core
  * [Laboratory Observation for Priority Variables](StructureDefinition-cibmtr-obs-priority-variables.html) - derived from the general CIBMTR lab Observation, but bound to the FY2022 priority ValueSet
* Medication-related Profiles
  * [MedicationRequest](StructureDefinition-cibmtr-medication-request.html) - derived from mCode
  * [Medication](StructureDefinition-cibmtr-medication.html) - derived from US-Core
    * [Mobilizing Agent Medication](StructureDefinition-cibmtr-mobilizing-agent-medication.html)
    * [Preprative Regimen Medications](StructureDefinition-cibmtr-prep-regimen-medication.html)
    * [Additional Drugs in Peri-Transplant Period](StructureDefinition-cibmtr-additional-peri-transplant-medication.html)
    * [GVHD Prophylaxis Medication](StructureDefinition-cibmtr-gvhd-prophylaxis-medication.html)
    * [Planned Post-HCT Disease Therapy Medication](StructureDefinition-cibmtr-post-hct-disease-therapy-planned-medication.html)
    * [Prior Exposure Medication](StructureDefinition-cibmtr-prior-exposure-medication.html)


#### ValueSets
* LOINC (used with Observation)
  * [CIBMTR Priority Variables for FY22](ValueSet-cibmtr-priority-variables-2022.html)
* RxNorm (used in MedicationRequest and Medication)
  * [Mobilizing Agents (auto only)](ValueSet-med-mobilizing-agents-vs.html)
  * [Prep Regimen](ValueSet-med-prep-regimen-vs.html)
  * [Additional Drugs in Peri-Transplant Period](ValueSet-med-addition-peri-transplant-vs.html)
  * [GVHD Prophylaxis](ValueSet-med-gvhd-prophylaxis-vs.html)
  * [Post-HCT Disease Therapy Planned](ValueSet-med-post-hct-disease-therapy-planned-vs.html)
  * [Prior Exposure: Potential Study Eligibility](ValueSet-med-prior-exposure-vs.html)
  * [All Form 2400 Medications](ValueSet-med-all-form2400-vs.html)
