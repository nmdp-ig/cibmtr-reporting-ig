ValueSet:    GVHDTypeValueSet
Title:       "GVHD Type Value Set"
Id:          gvhdtype-valueset
Description: "Permissible values for types of Graft vs Host Disease, from NIH caDSR"
* include codes from system $SCT where concept is-a #234646005 "Graft-versus-host disease (disorder)"
* include codes from system CADSR_VM_CS

// CodeSystem: CIBMTR_SCT_CS
// Title: "SNOMED codes used for CIBMTR"
// Id: cibmtr-sct
// Description: "NIH Common Data Element Value Meanings for CIBMTR"
// * ^url = $SCT
// * ^version = "2020"
// * ^status = #active
// * ^experimental = false
// * ^publisher = "NMDP/CIBMTR"
// * ^copyright = "National Cancer Institute (NCI)"
// * ^content = #fragment


CodeSystem: CADSR_VM_CS
Title: "NIH Common Data Element Value Meanings for CIBMTR"
Id: cibmtr-cadsr-vm
Description: "NIH Common Data Element Value Meanings for CIBMTR"
* ^url = $CADSR
* ^version = "2020"
* ^status = #active
* ^experimental = false
* ^publisher = "NMDP/CIBMTR"
* ^copyright = "National Cancer Institute (NCI)"
* ^content = #fragment
* #4722619 "Acute GVHD" "Acute Graft Vs Host Disease"
* #2991794 "Classic cGVHD" "Classic chronic Graft Vs Host Disease"
* #2991795 "Overlap cGVHD" "Overlap chronic Graft Vs Host Disease"
* #2991796 "Late Acute GVHD" "Late Acute Graft Vs Host Disease"
* #3261243 "Not Applicable" "Not Applicable"


CodeSystem: CADSR_CDE_CS
Title: "NIH Common Data Elements for CIBMTR"
Id: cibmtr-cadsr-cde
Description: "NIH Common Data Elements for CIBMTR"
* ^url = $CADSR
* ^version = "2020"
* ^status = #active
* ^experimental = false
* ^publisher = "NMDP/CIBMTR"
* ^copyright = "National Cancer Institute (NCI)"
* ^content = #fragment
* #2603692 "Acute Graft Versus Host Disease Maximum Overall Grade"
* #2626409 "Biopsy Anatomic Site Performed Name"
* #2797618 "Acute Graft Versus Host Disease Skin Involvement Maximum Severity Type"
* #2797633 "Acute Graft Versus Host Disease Lower Gastrointestinal Tract Involvement Maximum Severity Type"
* #2797671 "Acute Graft Versus Host Disease Liver Involvement Maximum Severity Type"
* #2980753 "Therapeutic Procedure Administered Type"
* #3005293 "Graft Versus Host Disease Diagnosis Type"
* #5040179 "Acute Graft Versus Host Disease Stage Upper Gastrointestinal Tract Severity Type"
* #5263856 "Post Infusion Procedure Timepoint Type"
* #6975011 "Concomitant Medication Use Indication Reason"