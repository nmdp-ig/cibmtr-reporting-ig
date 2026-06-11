### Overview

Laboratory Observation FHIR resources may be submitted to the CIBMTR Direct FHIR API (see the R4 Connection Guide). These profiles are derived from profiles defined in the US Core Implementation Guide. The CIBMTR profiles extend the base profiles by requiring the `meta.security` element to identify the submitting center and by applying bindings to CIBMTR-defined or laboratory-specific ValueSets where applicable. The Laboratory Observation resource is patient-specific and represents laboratory test results and related laboratory observations for an individual subject.

---

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Mandatory**) or must be supported if
the data is present in the sending system (**Must Support**). Additional guidance and examples
are provided in the sections below.

**Each Laboratory Observation Must Have:**
- security label
- status 
- laboratory test code (code)
- patient reference (subject)
- effective date/time

**Each Laboratory Observation Must Support:**
- encounter reference
- specimen reference
- reference range
- interpretation
- performer
- note


---

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**<br>
The CIBMTR observation laboratory results profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**code**<br>
The code element identifies the laboratory test or observation being reported. Laboratory test codes are typically represented using LOINC codes or CIBMTR-defined laboratory ValueSets where applicable.

**subject**<br>
The **subject** element is mandatory and must contain a reference to a Patient resource identifying the subject of the medication request.

**value[x]**<br>
Observation result values may be represented in multiple forms. CIBMTR currently supports only valueQuantity for numeric results and valueCodeableConcept for categorical results. For valueCodeableConcept, only coded values are supported. Other value types, such as valueString, are not currently supported.

**valueQuantity.comparator**<br>
There are cases where the laboratory result exceeds the measurable limits of the test and a comparator such as < or > is required. In these cases, the valueQuantity.comparator element **MUST** be used.

**referenceRange**<br>
For CMV LOINC codes that use valueQuantity, a corresponding referenceRange element **MUST** also be provided.



{% include link-list.md %}

---
