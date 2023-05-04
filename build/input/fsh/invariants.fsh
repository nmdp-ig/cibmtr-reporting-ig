// documentation on FHIRPath here: http://hl7.org/fhirpath/N1/

Invariant:  sec-rc
Severity:   #error
Description: "Use transplant center identifier for security tag"
Expression: "matches('^rc_[0-9]{5}$')"

// Invariant:  val-1
// Severity: #error
// Description: "If valueQuantity is used, a referenceRange must also be present"
// Expression: "valueQuantity.exists() implies referenceRange.exists()"

// Invariant: val-2
// Severity: #error
// Description: "Only allow valueQuantity or valueCodeableConcept"
// Expression: "valueQuantity.exists() or valueCodeableConcept.exists()"
