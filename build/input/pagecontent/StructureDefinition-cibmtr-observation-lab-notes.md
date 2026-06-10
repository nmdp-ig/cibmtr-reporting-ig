#### Value[x]

Observation result values may be represented in multiple forms. CIBMTR currently supports only the following value types:

- `valueQuantity`
  - Per [US-Core Laboratory Observation], coded quantity units **SHALL** use UCUM for coded quantity units. For example:

``` json
"valueQuantity" : {
  "value" : 5,
  "unit" : "gram per deciliter",
  "system" : "http://unitsofmeasure.org",
  "code" : "g/dL"
}
```

- `valueCodeableConcept`
  - Per [US-Core Laboratory Observation], coded result values **SHOULD** use Snomed CT for coded Results. For example:

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
  
CIBMTR does **NOT** currently support any other value types, such as valueString.

#### Using comparators in `valueQuantity`
In some cases, the laboratory result exceeds the measurable limits of the test and requires a comparator such as < or >. In these cases, the `valueQuantity.comparator` **MUST** be used. For example:

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
- For CMV LOINC codes that use `valueQuantity`, a corresponding `referenceRange` element **MUST** also be provided. For example:

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
