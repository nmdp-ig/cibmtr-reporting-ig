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
- status 
- code identifying the vital sign being measured 
- patient
- clinically relevant time

**Each Vital Signs Observation Must Support**
- performer
- result value
- reason if the value is absent
- component results

**Additional US Core Requirements (for certification testing)**
These elements are not Mandatory or Must Support but are included in the formal US Core
Vital Signs profile definition and examples:
- device
- derivedFrom
- note

---

### Profile-specific Implementation Guidance (CIBMTR)

**Patient reference**
Each vital signs Observation **SHALL** reference a Patient resource that exists on the
CIBMTR FHIR server. Client systems must ensure the Patient resource has been created (or
already exists) prior to submitting vital sign Observations.

**Terminology bindings**
This profile binds `Observation.code` to standard LOINC codes for vital signs in accordance
with the US Core Vital Signs profile. Where applicable, CIBMTR-specific value sets or
constraints further limit acceptable codes to support consistent reporting.



{% include link-list.md %}

---