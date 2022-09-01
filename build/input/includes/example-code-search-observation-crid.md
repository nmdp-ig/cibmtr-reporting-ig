
<!-- Search Observation by CRID (GET) -->
_Python_

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

