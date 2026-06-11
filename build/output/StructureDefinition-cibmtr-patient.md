# CIBMTR Patient Profile (us-core) - CIBMTR Reporting Implementation Guide v0.1.11

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CIBMTR Patient Profile (us-core)**

## Resource Profile: CIBMTR Patient Profile (us-core) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient | *Version*:0.1.11 |
| Draft as of 2026-06-11 | *Computable Name*:CIBMTRPatient |

### Overview

The CIBMTR Patient Profile (us-core) inherits from the US Core Patient Profile, which in turn inherits from the base FHIR Patient resource. This profile meets the requirements of the U.S. Core Data for Interoperability (USCDI) Patient Demographics/Information Data Class and sets minimum expectations for representing, searching, and retrieving patient demographic and administrative information for CIBMTR use cases. It specifies which elements, extensions, and identifier slices **SHALL** be present and constrains how they are used to support interoperability across CIBMTR reporting workflows.

-------

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Mandatory**) or must be supported if the data is present in the sending system (**Must Support**). They are presented below in a simple human-readable explanation. Profile-specific guidance and examples are provided below.

**Each Patient Must Have:**

* security label
* CCN (5digit)
* first name
* last name
* birthdate (YYYY-MM-DD)
* gender (M/F)

**Each Patient Must Support:**

* address
* communication
* link

-------

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**
 The CIBMTR Patient profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**CCN**
 The patient identifier **MUST** include a 5-digit CCN identifying the transplant center.

**Patient Name**
 The patient record **MUST** include both a first name and last name. Previous or historical names may be represented using `Patient.name.use = "old"` and/or an end date in `Patient.name.period`.

**Birth Date**
 Birth date **MUST** be represented using the YYYY-MM-DD format

**Gender**
 Gender **MUST** be represented using supported values such as M or F.

**Patient Address**
 Previous or historical addresses may be represented using `Patient.address.use = "old"` and/or an end date in `Patient.address.period`.

**SSN caution**
 **SSNs SHOULD NOT** be used as a patient identifier (`Patient.identifier.value`) due to identity theft and filtering concerns.

-------

-------

**Usages:**

* Refer to this Profile: [CIBMTR Cytogenetics Profile](StructureDefinition-cibmtr-cytogenetics.md)
* Examples for this Profile: [Patient/PatientExample1](Patient-PatientExample1.md), [Patient/PatientExample2](Patient-PatientExample2.md), [Patient/PatientExample3](Patient-PatientExample3.md), [Patient/PatientExample4](Patient-PatientExample4.md)...Show 2 more,[Patient/PatientExample5](Patient-PatientExample5.md)and[Patient/PatientExample6](Patient-PatientExample6.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/nmdp.fhir.cibmtr-reporting|current/StructureDefinition/cibmtr-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cibmtr-patient.csv), [Excel](StructureDefinition-cibmtr-patient.xlsx), [Schematron](StructureDefinition-cibmtr-patient.sch) 

### Notes:

This section describes how client systems should search for and (if needed) create a Patient on the CIBMTR FHIR server before submitting other resources that reference the Patient as `subject`.

#### Patient Resources (CIBMTR Server Workflow)

A FHIR Patient resource with an identifier containing the CRID must exist on the CIBMTR FHIR server to be used as a subject reference in Observation or other resources. To prevent multiple identical Patient resources from being created, the client must first check to see if it already exists.

To search for Patient resource with a specific CRID, use this `GET` request (all one line)

```
GET <base URL>/r4/Patient?
    _security=http://cibmtr.org/codesystem/transplant-center|rc_<CCN>
    &identifier=http://cibmtr.org/identifier/CRID|<CRID>

```

If the response shows a searchset result with a `total` of 0, then a Patient resource with that CRID has not been created, and a new Patient resource must be created. In this case, proceed to `Submit Patient FHIR Resource`.

If the response shows a `total` of one or more, then at least one Patient with that CRID already exists. In this case, skip Step 3, and go on to Step 4. If more than one Patient was found, then it suggests that someone created a Patient without checking to see if it first exists.

A note about special characters: The FHIR search parameters sometime include special characters such as the pipe character ("`|`"). Often, these need to be replaced with url-encoded character strings. In this case, "`|`" is replaced by "`%7C`" in the values for the keys.

The response below shows one Patient resource, and that resource has an `id` of 46986.

| |
| :--- |
| *Figure 5: Example of response of Patient search* |

The 'id' should be used in all `subject.references` for all subsequent Observations that are submitted for this Patient. This would have the form of:

```
"subject": {
    "reference": "Patient/<id>"
    }

```

Replace `<id>` with the `Patient.id` found in the search.

To drive home the point, the

* `Patient.id` is a local server id, and is used as a subject.reference in other FHIR resources.
* `Patient.identifier` is a business identifier and the where the CRID is located.

##### Submit Patient FHIR Resource

If the Patient FHIR resource doesn't already exist, it must be created before any other FHIR resources. The Patient FHIR resource ID is part of the response to the Patient POST request. The resource ID is unique to the CIBMTR FHIR server and is used to reference the Patient subject on all subsequently submitted FHIR resources. The resource ID is assigned by the FHIR server and is different from the Patient.identifier section of the FHIR resource. The Patient ID is **NOT** a Patient CRID.

The Direct FHIR Service API uses a POST request to submit a Patient resource at the following case-sensitive endpoint URLs:

```
POST    <base URL>/r4/Patient

```

The authorization key and bearer token must be included in the request as mentioned in the previous section. FHIR JSON submissions should also include a `content-type` key in the header with value: `application/fhir+json`.

#### Minimum Patient Resource Example

The Patient FHIR resource usually contains the demographics data for the patient, however, since the demographics data is already submitted during the CRID registration process, there are only three primary components necessary in the Patient FHIR resource:

1. A`security`label (describe above) within the`meta`section of the Patient resource must contain the CIBMTR Center Number (CCN) prepended with`rc_`and associated with the codesystem as shown in Figure 6.
1. A`text.status`section that should have the narrative code of`empty`if no text narrative is provided. An example is shown in Figure 6.
1. A CRID identifier reference within the`identifier`section of the Patient resource as shown in Figure 6.

| |
| :--- |
| *Figure 6: Example POST request to submit a Patient FHIR resource and the required FHIR sections in the body of the request* |

PII information should be avoided as part of the Patient resource. However, the Direct FHIR service API will remove PII information, including any that might be contained in `text.div` or other sections of the resource before storing it on the FHIR server.

The response after submitting a Patient resource request, includes the Patient resource ID in the header of the response (see Figure 7). The `Location` section of the response header includes a URL reference for the Patient resource on the CIBMTR FHIR server and the Patient resource ID is in the URL (circled in red in Figure 7). The Patient resource ID is necessary for submitting other FHIR resources to the Direct FHIR service API, but if the ID for a Patient resource previously submitted is not known, the following GET request can be submitted to the API to retrieve the Patient resource for a given CRID:

| |
| :--- |
| *Figure 7: Example FHIR Patient submission response with the Patient resource ID found in the response header Location* |

Preferred Patient resource While including the CRID identifier, meta.security tag, and empty text element is the bare minimum for creating a Patient resource, we prefer to have some additional data present to help with resource management. These include date of birth, gender, and race & ethnicity information. Race and ethnicity must be reported as described in the FHIR US-Core Implementation Guide:

* `https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-race.html`
* `https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-ethnicity.html`

See the following for an example that using these elements with data as found for registering for the CRID above.

```
{
    "resourceType": "Patient",
    "meta": {"security": [
        {
            "system": "http://cibmtr.org/codesystem/transplant-center",
            "code": "rc_12002"
        }
    ]},
    "text": {"status": "empty"},
    "identifier": [
        {
            "use": "official",
            "system": "http://cibmtr.org/identifier/CRID",
            "value": "4598886"
        }
    ],
    "gender": "male",
    "birthDate": "1925-07-04",
    "extension": [
        {
            "extension": [
                {
                    "url": "ombCategory",
                    "valueCoding": {
                        "system": "urn:oid:2.16.840.1.113883.6.238",
                        "code": "2106-3",
                        "display": "White"
                    }
                },
                {
                    "url": "text",
                    "valueString": "White"
                }
            ],
            "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
        }
    ]
}

```

Note that ethnicity is not included in the above example. This is because valueset for the US-Core Ethnicity Extension does not include Unknown which was submitted to the CRID service. To be conformant to the FHIR US-Core Implementation Guide, it must be either "Hispanic or Latino" or "Non Hispanic or Latino." Please contact us if you have any questions on how to implement these extensions.

Here's an example with ethnicity included:

```
{
    "resourceType": "Patient",
    "meta": {"security": [
        {
            "system": "http://cibmtr.org/codesystem/transplant-center",
            "code": "rc_12002"
        }
    ]},
    "text": {"status": "empty"},
    "identifier": [
        {
            "use": "official",
            "system": "http://cibmtr.org/identifier/CRID",
            "value": "4598886"
        }
    ],
    "gender": "male",
    "birthDate": "1925-07-04",
    "extension": [
        {
            "extension": [
                {
                    "url": "ombCategory",
                    "valueCoding": {
                        "system": "urn:oid:2.16.840.1.113883.6.238",
                        "code": "2106-3",
                        "display": "White"
                    }
                },
                {
                    "url": "text",
                    "valueString": "White"
                }
            ],
            "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
        },
        {
            "extension": [
                {
                    "url": "ombCategory",
                    "valueCoding": {
                        "system": "urn:oid:2.16.840.1.113883.6.238",
                        "code": "2135-2",
                        "display": "Hispanic or Latino"
                    }
                },
                {
                    "url": "detailed",
                    "valueCoding": {
                        "system": "urn:oid:2.16.840.1.113883.6.238",
                        "code": "2184-0",
                        "display": "Dominican"
                    }
                },
                {
                    "url": "text",
                    "valueString": "Hispanic or Latino"
                }
            ],
            "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
        }
    ]
}

```



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cibmtr-patient",
  "url" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient",
  "version" : "0.1.11",
  "name" : "CIBMTRPatient",
  "title" : "CIBMTR Patient Profile (us-core)",
  "status" : "draft",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.meta.security",
        "path" : "Patient.meta.security",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "slicing on meta.security",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Patient.meta.security:TransplantCenter",
        "path" : "Patient.meta.security",
        "sliceName" : "TransplantCenter",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.meta.security:TransplantCenter.system",
        "path" : "Patient.meta.security.system",
        "min" : 1,
        "patternUri" : "http://terminology.cibmtr.org/codesystem/transplant-center"
      },
      {
        "id" : "Patient.meta.security:TransplantCenter.code",
        "path" : "Patient.meta.security.code",
        "min" : 1,
        "constraint" : [
          {
            "key" : "sec-rc",
            "severity" : "error",
            "human" : "Use transplant center identifier for security tag",
            "expression" : "matches('^rc_[0-9]{5}$')",
            "source" : "http://fhir.nmdp.org/ig/cibmtr-reporting/StructureDefinition/cibmtr-patient"
          }
        ]
      },
      {
        "id" : "Patient.extension:MaidenNameExt",
        "path" : "Patient.extension",
        "sliceName" : "MaidenNameExt",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:PatBirthPlaceExt",
        "path" : "Patient.extension",
        "sliceName" : "PatBirthPlaceExt",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "system"
            }
          ],
          "description" : "slicing on identifier.system",
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.identifier:CRID",
        "path" : "Patient.identifier",
        "sliceName" : "CRID",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:CRID.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "http://terminology.cibmtr.org/identifier/CRID"
      },
      {
        "id" : "Patient.identifier:GRID",
        "path" : "Patient.identifier",
        "sliceName" : "GRID",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:GRID.type.coding.system",
        "path" : "Patient.identifier.type.coding.system",
        "patternUri" : "https://www.hl7.org/fhir/v2/0203/index.html"
      },
      {
        "id" : "Patient.identifier:GRID.type.coding.code",
        "path" : "Patient.identifier.type.coding.code",
        "patternCode" : "DR"
      },
      {
        "id" : "Patient.identifier:GRID.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "http://www.isbt128.org/uri/GRID"
      },
      {
        "id" : "Patient.identifier:NMDPRecipient",
        "path" : "Patient.identifier",
        "sliceName" : "NMDPRecipient",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:NMDPRecipient.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "http://terminology.nmdp.org/identifier/recipient"
      },
      {
        "id" : "Patient.identifier:CIBMTR-non-NMDP-donor",
        "path" : "Patient.identifier",
        "sliceName" : "CIBMTR-non-NMDP-donor",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:CIBMTR-non-NMDP-donor.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "http://terminology.cibmtr.org/identifier/non-nmdp-donor"
      },
      {
        "id" : "Patient.identifier:SSN",
        "path" : "Patient.identifier",
        "sliceName" : "SSN",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier:SSN.system",
        "path" : "Patient.identifier.system",
        "patternUri" : "http://hl7.org/fhir/sid/us-ssn"
      }
    ]
  }
}

```
