### Guidance: Laboratory Observations

#### Value[x]

Observation values can be reported in many forms. CIBMTR currently supports only two:
- `valueQuantity`
- `valueCodeableConcept`
  
CIBMTR does **NOT** support any other value types (e.g., `valueString` is not currently supported)

#### Special rules:
- For CMV LOINC codes that use `ValueQuantity`, it **MUST** be accompanied with a `referenceRange`

