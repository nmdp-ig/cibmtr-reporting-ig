
<!-- CRID Lookup/Registration (POST) -->
_Python_ 

~~~ python
#!/usr/bin/env python3

import json
import requests
from pathlib import Path


# Load patient object from patient.json
with open('patient.json') as f:
    patient = json.load(f)

#print(patient)

tokenfile = Path('token.txt')  # Bearer token was previously captured in token.txt
authstring = 'Bearer ' + tokenfile.read_text()
headers = {'Authorization': authstring,
           'Content-Type': 'application/json'}

r = requests.post('https://qa-internal-api.nmdp.org/cibmtr-fhir-backend/v1/r4/Patient/$crid-assignment',
                 json=patient,
                 headers=headers)

if r:
    print(json.dumps(r.json(), indent=4))
else:
    print(f"Request failed with status code {r.status_code}")
    print("Response body:")
    print(r.text) 
