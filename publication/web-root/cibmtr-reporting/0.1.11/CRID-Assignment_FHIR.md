# CRID Assignment FHIR - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* **CRID Assignment FHIR**

## CRID Assignment FHIR

### CIBMTR Research ID (CRID) Lookup or Creation

The client must either search for an existing patient previously registered with CIBMTR or register a new one. In both scenarios, the client will receive a FHIR Patient resource via a special $crid-assignment operation, which assigns a CIBMTR Research Identifier (CRID). This CRID is used as the patient identifier for all future FHIR data submissions.

CIBMTR provides a dedicated FHIR Patient service with a special $crid-assignment operation to securely handle the submission of personally identifiable information (PII). Data submitted through this API is subject to enhanced protections within CIBMTR to minimize unnecessary exposure of PII. For all subsequent FHIR submissions, the CRID serves as the primary patient identifier, and any PII is removed from the FHIR resources before being stored in the CIBMTR FHIR servers.

The CRID API uses a `POST` request at the following case-sensitive endpoint URLs:

```
POST    <base URL>/<resource_version>/Patient/$crid-assignment

```

**In Parameters:**

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| patient |   | 1..1 | patient |   |   | A patient parameter with Patient Fhir resource |
| ccn |   | 1..1 | string |   |   | A ccn parameter, center number |

**Out Parameters:**

| | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| identifier |   | 1..* | identifier |   |   | Cibmtr crid identifer |

The authorization key and bearer token must be included in the request as mentioned in the previous section. For the body of the POST request, the following data fields are requested:

**Five required attributes**

* CCN (5digit)
* First name
* Last name
* Birthdate (YYYY-MM-DD)
* Gender (M/F)

**Optional attributes (possibly present)**

* SSN (###-##-####)
* Mother’s maiden name
* Race (race code)
* Ethnicity (ethnicity code)

Complete list of payload options for CRID registration is shown below.

Because the CRID API is available as a `POST` request, submitting the same data twice does not re-register the patient, but rather will return the parameter response with 200 OK.

The response payload of the CRID Service API is a JSON object that contains the CRID number (lower pane in Figure). The CRID number is then used for all other data references to the registered patient.

### Example Code

#### CRID Lookup/Registration (POST)

