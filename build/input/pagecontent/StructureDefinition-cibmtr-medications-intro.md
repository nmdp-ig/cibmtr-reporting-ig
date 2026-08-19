### Overview


Medication-related FHIR resources may be submitted to the CIBMTR Direct FHIR API (see the R4 Connection Guide). These profiles are derived from profiles defined in the US Core and mCODE Implementation Guides. The CIBMTR profiles extend the base profiles by requiring the **meta.security** element to identify the submitting center and by applying bindings to CIBMTR-defined or RxNorm-based ValueSets where applicable. In some cases, elements that were optional in the original profiles may be required in the CIBMTR profiles.

The MedicationRequest resource is the primary medication-related resource received by CIBMTR. It is patient-specific and represents a medication order or request for an individual subject. Medication details are provided through the medication reference section in MedicationRequest, which points to a Medication resource.

The Medication resource is definitional and provides the medication information referenced by MedicationRequest. A Medication resource may also reference another Medication resource when additional medication details or relationships need to be represented.


### Mandatory and Must Support Data Elements

The following data elements must always be present (**Must Have**) or must be supported if
the data is present in the sending system (**Must Support**). 

**Each MedicationRequest Must Have:**
- security label
- status 
- medication information (medicationReference or medicationCodeableConcept)
- patient reference (subject)
- authored date

**Each MedicationRequest Must Support:**
- requester
- dosage instruction
- medication route
- reason for medication
- category
- note
- encounter reference


### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**<br>
The CIBMTR MedicationRequest profile requires a `meta.security` label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**medication[x]** <br>
Medication information in MedicationRequest must be represented using one of the following:

`medicationReference` — references a Medication resource containing medication details, or
`medicationCodeableConcept` — directly provides the medication code. A code system value **SHOULD** be supplied for each code.

At least one representation is required in MedicationRequest.

When `medicationReference` is used, the referenced Medication resource provides definitional and reusable medication information that may be shared across one or more MedicationRequest resources. A Medication resource may also reference another Medication resource to represent additional medication relationships or details through nested medication references.

**subject**<br>
The **subject** element is mandatory and must contain a reference to a Patient resource identifying the subject of the medication request.


{% include link-list.md %}