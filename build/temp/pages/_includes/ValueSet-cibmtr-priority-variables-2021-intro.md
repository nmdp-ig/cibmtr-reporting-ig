### Introduction
CIBMTR currently supports submission of lab measurements collected prior to and post-HCT transfusion.  When submitting FHIR Observation resources, one of the below supported LOINC codes must be used in the code section of the resource.  Selecting the correct LOINC code to use to represent the clinical concept of the lab data should be done by someone clinically trained to understand the lab measurement and corresponding LOINC code.  Lab quantities should always include the corresponding unit of measure coded using the UCUM standard vocabulary.

The codes described here represent variables that have been identified as a priority for the CIBMTR Data Transformation Initiative in Fiscal Year 2021. They include codes from LOINC panels describing Complete Blood Count (CBC) (see below) and other codes representing similar concepts but are not found in these panels.

| **Panel Code** | **Name** |
| --- | --- |
| [57782-5](http://details.loinc.org/LOINC/57782-5.html) | CBC W Ordered Manual Differential panel – Blood |
| [57021-8](http://details.loinc.org/LOINC/57021-8.html) | CBC W Auto Differential panel – Blood |
| [69742-5](http://details.loinc.org/LOINC/69742-5.html) | CBC W Differential panel, method unspecified – Blood |
{: .grid}

{% include link-list.md %}