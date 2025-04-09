### Guidance: Vital Signs

#### Profiles
- [CIBMTR Vital Signs] - derived from US-Core
- [CIBMTR Vital Signs-Height] - derived from US-Core
- [CIBMTR Vital Signs-Weight] - derived from US-Core


#### Value[x]

Vital Signs values can be reported in many forms. CIBMTR currently supports only "valueQuantity":
- `valueQuantity`
  - per [US-Core Laboratory Vital Signs], **SHALL** use UCUM for coded quantity units. For example,

``` json
"valueQuantity" : {
    "value" : 65.899999999999991,
    "unit" : "in",
    "system" : "http://unitsofmeasure.org",
    "code" : "[in_i]"
}
```

  
CIBMTR does **NOT** support any other value types (e.g., `valueString` is not currently supported)

#### Special rules:
- One code in observation.code must have a fixed `Observation.code.coding.code` provided in the [FHIR core specification vital signs table]. For example, the fixed code 8302-2 is required in body height fhir data,

``` json
"coding" : [{
      "system" : "http://loinc.org",
      "code" : "8302-2", 
      "display" : "Body height"
    }]
```

- The observations MAY have additional codes that translate or map to the Observation code or category codes. For example:
  - providing a local system-specific code
  - providing more specific codes such as 3141-9 - Body weight Measured in addition to 29463-7 (fixed code) - Body weight. For example,

``` json
"coding" : [
    {"system":"http://loinc.org",
     "code":"29463-7",
     "display":"Body weight"},

    {"system":"http://loinc.org",
     "code":"3141-9",
     "display":"Body weight Measured"}
    ]
```

  A code system value SHOULD be supplied for each additional code.

- The observations MAY have component observations. For example, to qualify the vital sign observation, 8310-5 - Body temperature, 8327-9 - Body temperature measurement site (oral, forehead, rectal, etc.) may be used as a component observation. The FHIR core specification vital signs table provides several of these.

{% include link-list.md %}