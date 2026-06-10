### Overview

The CIBMTR Patient Profile (us-core) inherits from the US Core Patient Profile, which in turn inherits from the base FHIR Patient resource. This profile meets the requirements of the U.S. Core Data for Interoperability (USCDI) Patient Demographics/Information Data Class and sets minimum expectations for representing, searching, and retrieving patient demographic and administrative information for CIBMTR use cases. It specifies which elements, extensions, and identifier slices **SHALL** be present and constrains how they are used to support interoperability across CIBMTR reporting workflows.

---

### Mandatory and Must Support Data Elements

The following data elements must always be present (**Mandatory**) or must be supported if the data is present in the sending system (**Must Support**). They are presented below in a simple human-readable explanation. Profile-specific guidance and examples are provided below.

**Each Patient "Must Have"**
- security label
- CCN (5digit)
- first name
- last name
- birthdate (YYYY-MM-DD)
- gender (M/F)

**Each Patient "Must Support"**
- address
- communication
- link

---

### Profile-specific Implementation Guidance (CIBMTR)

**Security label requirement (meta.security)**<br>
The CIBMTR Patient profile requires a **meta.security** label identifying the Transplant Center context (e.g., `rc_<CCN>`). This security tag is used as part of the query pattern for searching and for access scoping.

**CCN**<br>
The patient identifier **MUST** include a 5-digit CCN identifying the transplant center.

**Patient Name**<br>
The patient record **MUST** include both a first name and last name. Previous or historical names may be represented using `Patient.name.use = "old"` and/or an end date in `Patient.name.period`.

**Birth Date**<br>
Birth date **MUST** be represented using the YYYY-MM-DD format

**Gender**<br>
Gender **MUST** be represented using supported values such as M or F.

**Patient Address**<br>
Previous or historical addresses may be represented using `Patient.address.use = "old"` and/or an end date in `Patient.address.period`.

**SSN caution**<br>
**SSNs SHOULD NOT** be used as a patient identifier (`Patient.identifier.value`) due to identity theft and filtering concerns.

---


{% include link-list.md %}

---


