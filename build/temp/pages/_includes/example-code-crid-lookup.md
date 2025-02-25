
<!-- CRID Lookup/Registration (PUT) -->
_Python_ 

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