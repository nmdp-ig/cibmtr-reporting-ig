
<!-- Request Authorization Token (POST) -->
_Python_

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

r = requests.post('https://oktapreview.nmdp.org/oauth2/ausaexcazhLhxKnJs0h7/v1/token',
                  auth=HTTPBasicAuth(clientId, clientSecret),
                  data=data,
                  headers=headers)

accessToken = r.json()["access_token"]
print(accessToken)
~~~

_bash script using curl, base64, and jq_

~~~ bash
#!/bin/bash
username='<CIBMTR Service Account Username>'
password='CIBMTR Service Account Password>'
clientid='<Application Client ID>'
clientsecret='<Application Client Secret>'
clientscope='<Application Scope>'

auth_string="Basic $(echo -n ${clientId}:${clientSecret}|base64)"

curl -s --location \
--request POST 'https://oktapreview.nmdp.org/oauth2/ausaexcazhLhxKnJs0h7/v1/token' \
--header 'Accept: application/json' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--header "Authorization: ${auth_string}" \
--data-urlencode "grant_type=password" \
--data-urlencode "scope=${clientScope}" \
--data-urlencode "username=${username}" \
--data-urlencode "password=${password}" \
| jq -r '.access_token'
~~~