<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.html');
else 
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/2020-11/Patient-MyPatientExample5.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.