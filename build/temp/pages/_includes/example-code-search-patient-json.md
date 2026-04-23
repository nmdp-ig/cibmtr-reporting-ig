{"resourceType": "Parameters",
    "parameter": [
        {
            "name": "resource",
            "resource": {
                "resourceType": "Patient",
                "meta": {
                    "security": [
                        {
                            "system": "http://cibmtr.org/codesystem/transplant-center",
                            "code": "rc_12001"
                        }
                     
                    ]
                },
                "extension": [
                    {
                        "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
                        "extension": [
                            {
                                "url": "ombCategory",
                                "valueCoding": {
                                    "system": "urn:oid:2.16.840.1.113883.6.238",
                                    
                                    "display": "UNK"
                                }
                            },
                            {
                                "url": "text",
                                "valueString": "unknown"
                            }
                        ]
                    },
                    {
                        "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
                        "extension": [
                            {
                                "url": "ombCategory",
                                "valueCoding": {
                                    "system": "urn:oid:2.16.840.1.113883.6.238",
                                    "code": "2135-2",
                                    "display": "Not Hispanic or Latino"
                                }
                            },
                            {
                                "url": "text",
                                "valueString": "Not Hispanic or Latino"
                            }
                        ]
                    },
                    {
                        "url": "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
                        "valueString": "Jhon son"
                    }
                ],
                
                "name": [
                    {
                        "use": "official",
                        "family": "Ranii",
                        "given": [
                            "sdascvdi"
                        ]
                    }
                ],
                "gender": "female",
                "birthDate": "2010-02-04"
            }
        },
        {
            "name": "ccn",
            "valueString": "12001"
        }
    ]
}
