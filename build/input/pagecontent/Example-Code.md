# Example Code Snippets

## Request Authorization Token (POST)
### _Python_

~~~ python
#!/usr/bin/env python3

import requests
from requests.auth import HTTPBasicAuth

clientId = '<Application Client ID>'
clientSecret = '<Appplication Client Secret>'
serviceAccountUsername = '<CIBMTR Service Account Username>'
serviceAccountPassword = '<CIBMTR Service Account Password>'
scope = '<Application Scope>'

headers = {'Content-Type': 'application/x-www-form-urlencoded', 
           'Accept': 'application/json'}

data = {'grant_type':'password', 
        'scope': scope, 
        'username':serviceAccountUsername, 
        'password':serviceAccountPassword}

r = requests.post('https://nmdp.oktapreview.com/oauth2/ausaexcazhLhxKnJs0h7/v1/token',
                  auth=HTTPBasicAuth(clientId, clientSecret),
                  data=data,
                  headers=headers)

accessToken = r.json()["access_token"]
print(accessToken)
~~~

### _bash script using curl, base64, and jq_

~~~ bash
#!/bin/bash
username='<CIBMTR Service Account Username>'
password='CIBMTR Service Account Password>'
clientid='<Application Client ID>'
clientsecret='<Application Client Secret>'
clientscope='<Application Scope>'

auth_string="Basic $(echo -n ${clientId}:${clientSecret}|base64)"

curl -s --location \
--request POST 'https://nmdp.oktapreview.com/oauth2/ausaexcazhlhxknjs0h7/v1/token' \
--header 'Accept: application/json' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header "Authorization: ${auth_string}" \
--data-urlencode "grant_type=password" \
--data-urlencode "scope=${clientScope}" \
--data-urlencode "username=${username}" \
--data-urlencode "password=${password}" \
| jq -r '.access_token'
~~~
 
## CRID Lookup/Registration (PUT)

### _Python_ 

~~~ python
#!/usr/bin/env python3

import json
import requests
from pathlib import Path

# Replace patient variable with your patient demographic data. 
# Below is just an example.
patient = {
    "ccn": "12002",
    "patient": {
        "firstName": "Steve",
        "lastName": "Rogers",
        "birthDate": "1925-07-04",
        "gender": "M",
        "ssn": "098-76-5432",
        "race": ['2106-3'],
        "ethnicity": "UNK"
    }
}
tokenfile = Path('token.txt')  # Bearer token was previously captured in token.txt
authstring = 'Bearer ' + tokenfile.read_text()
headers = {'Authorization': authstring,
            'Content-Type': 'application/json'}
r = requests.put('https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/CRID',
                    json=patient,
                    headers=headers)
if r:
    print(json.dumps(r.json(), indent=4))
else:
    print(r.status_code)
~~~

 
## Search Patient by CRID (GET)
### _Python_ 

~~~ python
#!/usr/bin/env python3

import sys
import json
import requests
from pathlib import Path

# replace <CRID> with actual CRID
crid = "<CRID>"

# Bearer token captured in token.txt
tokenfile = Path('token.txt')
authstring = 'Bearer ' + tokenfile.read_text()
headers = {'Authorization': authstring}

identifier = 'http://cibmtr.org/identifier/CRID|' + crid
security = 'http://cibmtr.org/codesystem/transplant-center|rc_12002'
payload = {
    'identifier': identifier,
    '_security': security
}

r = requests.get('https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/r4/Patient',
                 params=payload,
                 headers=headers)
if r:
    # print(json.dumps(r.json(), indent=4))
    print(r.text)
else:
    print(r.status_code)
~~~

 
## Create Patient (POST)
### _Python_ 

~~~ python
#!/usr/bin/env python3

import sys
import json
import requests
from pathlib import Path

if len(sys.argv) < 2:
    sys.exit("Usage: python postPatient.py <FHIR Patient resource json file>")
fhirjsonfile = Path(sys.argv[1])
patientFHIR = fhirjsonfile.read_text()

# Bearer token captured in token.txt
tokenfile = Path('token.txt')
authstring = 'Bearer ' + tokenfile.read_text()
headers = {'Authorization': authstring,
           'Content-Type': 'application/fhir+json'}


r = requests.post('https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/r4/Patient',
                  data=patientFHIR,
                  headers=headers)
if r:
    # print(json.dumps(r.json(), indent=4))
    print(r.headers['Location'])
    print(r.text)
else:
    print(r.status_code)
    print(r.headers)
    print(r.text)
~~~
 

## Create Observation (POST)
Python 
note: POSTing an Observation is just like POSTing a Patient. You just need to change the endpoint to Observation.
~~~ python
#!/usr/bin/env python3

import sys
import json
import requests
from pathlib import Path

if len(sys.argv) < 2:
    sys.exit("Usage: python postObservation.py <FHIR Observation resource json file>")
fhirjsonfile = Path(sys.argv[1])
observation = fhirjsonfile.read_text()

# Bearer token captured in token.txt
tokenfile = Path('token.txt')
authstring = 'Bearer ' + tokenfile.read_text()
headers = {'Authorization': authstring,
           'Content-Type': 'application/fhir+json'}


r = requests.post('https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/r4/Observation',
                  data=observation,
                  headers=headers)
if r:
    # print(json.dumps(r.json(), indent=4))
    print(r.headers['Location'])
    print(r.text)
else:
    print(r.status_code)
    print(r.headers)
    print(r.text)
~~~
 

## Search Observation by CRID (GET)
Python 

~~~ python
#!/usr/bin/env python3

import sys
import json
import requests
from pathlib import Path

if len(sys.argv) < 2:
    sys.exit("Usage: python searchObservationCRID.py <CRID>")

# Bearer token captured in token.txt
tokenfile = Path('token.txt')
authstring = 'Bearer ' + tokenfile.read_text()
headers = {'Authorization': authstring}

identifier = 'http://cibmtr.org/identifier/CRID|' + sys.argv[1]
security = 'http://cibmtr.org/codesystem/transplant-center|rc_12002'

payload = {
    'patient.identifier': identifier,
    '_security': security
}

r = requests.get('https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/r4/Observation',
                 params=payload,
                 headers=headers)
if r:
    print(json.dumps(r.json(), indent=4))
else:
    print(r.status_code)
~~~

