<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.html');
else 
  Redirect('https://fhir.nmdp.org/ig/cibmtr-reporting/0.1.12/Observation-ABOBloodGroupObservationSNOMED.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
