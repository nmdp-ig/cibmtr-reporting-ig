### Guidance: Laboratory Observations

#### Profiles
- [Laboratory Observation Results] - derived from US-Core
- [Laboratory Observation for Priority Variables] - derived from the general CIBMTR Laboratory Observation above, but bound to the FY2022 priority ValueSet

#### Value[x]

Observation values can be reported in many forms. CIBMTR currently supports only two:
- `valueQuantity`
  - per [US-Core Laboratory Observation], **SHALL** use UCUM for coded quantity units. For example,

``` json
"valueQuantity" : {
  "value" : 5,
  "unit" : "gram per deciliter",
  "system" : "http://unitsofmeasure.org",
  "code" : "g/dL"
}
```

- `valueCodeableConcept`
  - per [US-Core Laboratory Observation], **SHOULD** use Snomed CT for coded Results. For example,

``` json
"valueCodeableConcept" : {
  "coding" : [
    {
      "system" : "http://snomed.info/sct",
      "code" : "10828004",
      "display" : "Positive (qualifier value)"
    }
  ]
}
```
  
CIBMTR does **NOT** support any other value types (e.g., `valueString` is not currently supported)

#### Using comparators in `valueQuantity`

There are times when the result value is beyond the limits of the test, and a comparator such as `<` or `>` must be used. In this case, you must use the `valueQuantity.comparator` element. For example,

``` json
"valueQuantity" : {
  "value" : 13700,
  "comparator" : "<",
  "unit" : "international unit per milliliter",
  "system" : "http://unitsofmeasure.org",
  "code" : "[IU]/mL"
}
```

#### Special rules:
- For CMV LOINC codes that use `valueQuantity`, it **MUST** be accompanied with a `referenceRange`. For example,


``` json
"referenceRange" : [
  {
    "low" : {
      "value" : 13700,
      "unit" : "international unit per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "[IU]/mL"
    },
    "high" : {
      "value" : 9000000,
      "unit" : "international unit per milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "[IU]/mL"
    }
  }
]
```
{% include link-list.md %}