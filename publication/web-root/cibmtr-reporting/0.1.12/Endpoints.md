# Endpoints - CIBMTR Reporting Implementation Guide v0.1.12

* [**Table of Contents**](toc.md)
* **Endpoints**

## Endpoints

### Direct FHIR Endpoints

#### Production Test

Used to test production client workflows with non-production data

| | | |
| :--- | :--- | :--- |
| Access Credentials | POST | https://oktapreview.nmdp.org/oauth2/ausaexcazhLhxKnJs0h7/v1/token |
| Base URL |  | https://int-api.nmdp.org/cibmtr-fhir-backend/v1 |
| CRID Lookup/Assignment | PUT | https://int-api.nmdp.org/cibmtr-fhir-backend/v1/CRID |
| FHIR Resources | [POST (Create), PUT (Update), GET (Read, Search)](https://hl7.org/fhir/http.html) | https://int-api.nmdp.org/cibmtr-fhir-backend/v1/r4/<resource>**(replace <resource> with the FHIR resource, e.g., Patient, Observation, etc)** |

#### Production

| | | |
| :--- | :--- | :--- |
| Access Credentials | POST | https://okta.nmdp.org/oauth2/aus3ck6q30qmOdpMb1t7/v1/token |
| Base URL |  | https://api.nmdp.org/cibmtr-fhir-backend/v1 |
| CRID Lookup/Assignment | PUT | https://api.nmdp.org/cibmtr-fhir-backend/v1/CRID |
| FHIR Resources | [POST (Create), PUT (Update), GET (Read, Search)](https://hl7.org/fhir/http.html) | https://api.nmdp.org/cibmtr-fhir-backend/v1//r4/<resource>**(replace <resource> with the FHIR resource, e.g., Patient, Observation, etc)** |

The CIBMTR FHIR resource API only supports [Create (POST)](https://hl7.org/fhir/http.html#create), [Update (PUT)](https://hl7.org/fhir/http.html#update), [Read (GET)](https://hl7.org/fhir/http.html#read), and [Search (GET)](https://hl7.org/fhir/http.html#search), and [Capabilities (GET)](https://hl7.org/fhir/http.html#capabilities) interactions.

