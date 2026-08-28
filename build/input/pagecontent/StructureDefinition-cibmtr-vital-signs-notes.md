
#### valueQuantity
Vital Signs values can be reported in many forms. CIBMTR currently supports only "valueQuantity" and does not support other `value[x]` data types (e.g., `valueString`, `valueCodeableConcept`).

Vital sign values **SHALL** be reported using UCUM units as defined by the US Core Vital Signs
profile. Client systems **SHALL** ensure that numeric values and units are aligned to avoid
misinterpretation or validation errors. 

**Example: valueQuantity using UCUM units**
``` json
"valueQuantity" : {
    "value" : 65.899999999999991,
    "unit" : "in",
    "system" : "http://unitsofmeasure.org",
    "code" : "[in_i]"
}
```


#### Special rules:
- One code in observation.code must have a fixed `Observation.code.coding.code` provided in the [FHIR core specification vital signs table]. For example, the fixed code 8302-2 is required in body height fhir data,

- Each vital signs Observation **SHALL** include a LOINC code in `Observation.code.coding.code` that corresponds to one of the fixed codes defined in the FHIR core Vital Signs table. The required LOINC code identifies the type of vital sign being reported.

  For example, a Body Height observation **SHALL** include the fixed LOINC code
  `8302-2`:

``` json
"coding" : [{
      "system" : "http://loinc.org",
      "code" : "8302-2", 
      "display" : "Body height"
    }]
```

- An Observation MAY include additional codes in Observation.code.coding that
further qualify, translate, or map to the primary vital sign code. Examples include:

    -a local system-specific code
    -a more specific LOINC code in addition to the fixed code

  For example, a Body Weight observation may include both the fixed code 29463-7 (Body weight) and a more specific code such as 3141-9 (Body weight Measured):

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

  A code system value **SHOULD** be supplied for each additional code.

- The observations **MAY** have component observations. For example, to qualify the vital sign observation, 8310-5 - Body temperature, 8327-9 - Body temperature measurement site (oral, forehead, rectal, etc.) may be used as a component observation. The FHIR core specification vital signs table provides several of these.
- An Observation **MAY** include component observations to further qualify the measurement. For example, to qualify the vital sign observation, 8310-5 - Body temperature, 8327-9 - Body temperature measurement site (oral, forehead, rectal, etc.) may be used as a component observation. The FHIR core specification vital signs table provides several of these.

{% include link-list.md %}
