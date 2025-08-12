<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.html');
else 
  Redirect('http://fhir.nmdp.org/ig/cibmtr-reporting/0.1.7/ValueSet-med-gvhd-prophylaxis-vs.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
