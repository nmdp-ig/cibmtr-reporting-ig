### Patient Resources

A FHIR Patient resource with an identifier containing the CRID must exist on the CIBMTR FHIR server to be used as a subject reference in Observation or other resources. To prevent multiple identical Patient resources from being created, the client must first check to see if it already exists.

To search for Patient resource with a specific CRID, use this `GET` request (all one line)

~~~ 
GET <base URL>/r4/Patient?
    _security=http://cibmtr.org/codesystem/transplant-center|rc_<CCN>
    &identifier=http://cibmtr.org/identifier/CRID|<CRID>
~~~

If the response shows a searchset result with a `total` of 0, then a Patient resource with that CRID has not been created, and a new Patient resource must be created. In this case, proceed to Step 3.

If the response shows a `total` of one or more, then at least one Patient with that CRID already exists. In this case, skip Step 3, and go on to Step 4. If more than one Patient was found, then it suggests that someone created a Patient without checking to see if it first exists. 

A note about special characters:  The FHIR search parameters sometime include special characters such as the pipe character ("`|`"). Often, these need to be replaced with url-encoded character strings. In this case, "`|`" is replaced by "`%7C`" in the values for the keys.

The response below shows one Patient resource, and that resource has an `id` of 46986. 

|![Figure 5](dfhir_r3_figure05.png){: width="50%"} |
|:--:|
| <i>Figure 5: Example of response of Patient search</i>|

The 'id' should be used in all `subject.references` for all subsequent Observations that are submitted for this Patient. This would have the form of:

~~~ json
"subject": {
    "reference": "Patient/<id>"
    }
~~~

Replace `<id>` with the `Patient.id` found in the search.

To drive home the point, the 
- `Patient.id` is a local server id, and is used as a subject.reference in other FHIR resources.
- `Patient.identifier` is a business identifier and the where the CRID is located.

#### Step 3: Submit Patient FHIR Resource

If the Patient FHIR resource doesn't already exist, it must be created before any other FHIR resources.  The Patient FHIR resource ID is part of the response to the Patient POST request.  The resource ID is unique to the CIBMTR FHIR server and is used to reference the Patient subject on all subsequently submitted FHIR resources. The resource ID is assigned by the FHIR server and is different from the Patient.identifier section of the FHIR resource. The Patient ID is **NOT** a Patient CRID.

The Direct FHIR Service API uses a POST request to submit a Patient resource at the following case-sensitive endpoint URLs:

~~~
POST    <base URL>/r4/Patient
~~~

The authorization key and bearer token must be included in the request as mentioned in the previous section.  FHIR JSON submissions should also include a `content-type` key in the header with value: `application/fhir+json`.  

##### Minimum Patient resource
The Patient FHIR resource usually contains the demographics data for the patient, however, since the demographics data is already submitted during the CRID registration process, there are only three primary components necessary in the Patient FHIR resource: 

1.	A `security` label (describe above) within the `meta` section of the Patient resource must contain the CIBMTR Center Number (CCN) prepended with `rc_` and associated with the codesystem as shown in Figure 6.
2.	A `text.status` section that should have the narrative code of `empty` if no text narrative is provided.  An example is shown in Figure 6. 
3.	A CRID identifier reference within the `identifier` section of the Patient resource as shown in Figure 6.



|![Figure 6](dfhir_r3_figure06.png){: width="50%"} |
|:--:|
| <i>Figure 6: Example POST request to submit a Patient FHIR resource and the required FHIR sections in the body of the request</i>|

PII information should be avoided as part of the Patient resource.   However, the Direct FHIR service API will remove PII information, including any that might be contained in `text.div` or other sections of the resource before storing it on the FHIR server.  

The response after submitting a Patient resource request, includes the Patient resource ID in the header of the response (see Figure 7).   The `Location` section of the response header includes a URL reference for the Patient resource on the CIBMTR FHIR server and the Patient resource ID is in the URL (circled in red in Figure 7).   The Patient resource ID is necessary for submitting other FHIR resources to the Direct FHIR service API, but if the ID for a Patient resource previously submitted is not known, the following GET request can be submitted to the API to retrieve the Patient resource for a given CRID:


|![Figure 7](dfhir_r3_figure07.png){: width="50%"} |
|:--:|
| <i>Figure 7: Example FHIR Patient submission response with the Patient resource ID found in the response header Location</i>|

Preferred Patient resource
While including the CRID identifier, meta.security tag, and empty text element is the bare minimum for creating a Patient resource, we prefer to have some additional data present to help with resource management. These include date of birth, gender, and race & ethnicity information. Race and ethnicity must be reported as described in the FHIR US-Core Implementation Guide:
- `https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-race.html`
- `https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-ethnicity.html`

See the following for an example that using these elements with data as found for registering for the CRID above.

~~~ json
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
~~~

Note that ethnicity is not included in the above example. This is because valueset for the US-Core Ethnicity Extension does not include Unknown which was submitted to the CRID service. To be conformant to the FHIR US-Core Implementation Guide, it must be either "Hispanic or Latino" or "Non Hispanic or Latino." Please contact us if you have any questions on how to implement these extensions.

Here's an example with ethnicity included:

~~~ json
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
~~~

{% include link-list.md %}