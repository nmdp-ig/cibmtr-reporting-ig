### Overview

The CIBMTR Vital Signs Profile inherits from the US Core Vital Signs Profile, which in turn
inherits from the base FHIR Observation resource. This profile constrains the representation,
coding, and usage of vital sign observations to support consistent reporting and downstream
use in CIBMTR data collection and analysis workflows.

This profile establishes minimum expectations for representing vital sign measurements
(e.g., body height, body weight) recorded for a patient
and submitted to the CIBMTR FHIR server. It specifies the required elements, extensions, and identifier slices, and defines how they **SHALL** be used to support standardized reporting to CIBMTR.


### Mandatory and Must Support Data Elements

The following data elements must always be present (**Must Have**) or must be supported if
the data is present in the sending system (**Must Support**). 

**Each Vital Signs Observation Must Have:**
- security label
- status 
- code identifying the vital sign being measured 
- patient reference (subject)
- clinically relevant time

**Each Vital Signs Observation Must Support:**
- performer
- result value
- reason if the value is absent
- component results


### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**<br>
The CIBMTR vital signs profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**subject**<br>
The **subject** element is mandatory and must contain a reference to a Patient resource identifying the individual whose vital signs are being recorded.

**code**<br>
The code element identifies the vital sign being measured. Vital sign codes are typically represented using LOINC codes or CIBMTR-defined laboratory ValueSets where applicable. A code system value **SHOULD** be supplied for each code.

**value**<br>
Vital signs result values are represented as numeric quantities, and systems **SHOULD** use a standard UCUM unit.


{% include link-list.md %}

