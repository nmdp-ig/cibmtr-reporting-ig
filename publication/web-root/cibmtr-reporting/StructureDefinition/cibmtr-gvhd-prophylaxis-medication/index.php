<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.html');
else 
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.8/StructureDefinition-cibmtr-gvhd-prophylaxis-medication.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
