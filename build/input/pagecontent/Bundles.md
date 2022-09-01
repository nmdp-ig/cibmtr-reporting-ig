### Sending Bundles

Multiple FHIR resources can be submitted together in one Bundle FHIR resource.  The CIBMTR Direct FHIR service API supports FHIR transaction bundles.  The process for submitting a transaction Bundle FHIR resource is the same as submitting a single Observation FHIR resource, except for the bundle is sent to `<base URL>/r4` for processing (no explicit resource name is appended). If the bundle is sent to the Bundle end point, then it is stored, but not processed. 

~~~
POST    <base URL>/r4
~~~

An example of the structure of a transaction JSON Bundle FHIR resource is shown below.  Each Observation resource is an element of the “entry” array.  To avoid API timeout issues, bundles should be limited to 50 Observations or less. 

~~~ json
{
    "resourceType": "Bundle",
    "type": "transaction",
    "entry": [
        {
            "resource": { Observation Resource Here
            },
            "request": {
                "method": "POST",
                "url": "Observation"
            }
        },
        {
            "resource": { Observation Resource Here
            },
            "request": {
                "method": "POST",
                "url": "Observation"
            }
        },
        {
            "resource": { Observation Resource Here
            },
            "request": {
                "method": "POST",
                "url": "Observation"
            }
        }
    ]
}
~~~