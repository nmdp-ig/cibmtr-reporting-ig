### Overview

The CIBMTR Vital Signs Profile inherits from the US Core Vital Signs Profile, which in turn
inherits from the base FHIR Observation resource. This profile constrains the representation,
coding, and usage of vital sign observations to support consistent reporting and downstream
use in CIBMTR data collection and analysis workflows.

This profile establishes minimum expectations for representing vital sign measurements
(e.g., body height, body weight, blood pressure, body temperature) recorded for a Patient
and submitted to the CIBMTR FHIR server. It specifies which elements **SHALL** be present,
which elements are designated as **Must Support**, and how terminology bindings are applied
to ensure interoperability across reporting centers.

---

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Mandatory**) or must be supported if
the data is present in the sending system (**Must Support**). Additional guidance and examples
are provided in the sections below.

**Each Vital Signs Observation Must Have**
- security label
- status 
- code identifying the vital sign being measured 
- patient reference (subject)
- clinically relevant time

**Each Vital Signs Observation Must Support**
- performer
- result value
- reason if the value is absent
- component results


---

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**<br>
The CIBMTR vital signs profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**subject**<br>
The **subject** element is mandatory and must contain a reference to a Patient resource identifying the individual whose vital signs are being recorded.

**Terminology bindings**<br>
This profile binds `Observation.code` to standard LOINC codes for vital signs in accordance
with the US Core Vital Signs profile. Where applicable, CIBMTR-specific value sets or
constraints further limit acceptable codes to support consistent reporting.



{% include link-list.md %}

---