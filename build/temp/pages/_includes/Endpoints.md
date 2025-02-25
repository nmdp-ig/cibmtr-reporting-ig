### Direct FHIR Endpoints

<!--#### Test 
Used for development of new client software

<table>
    <thead>
        <tr>
            <th>Service</th>
            <th>HTTP</th>
            <th>Endpoint</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Access Credentials</td>
            <td>POST</td>
            <td>https://oktapreview.nmdp.org/oauth2/ausaexcazhLhxKnJs0h7/v1/token</td>
        </tr>
        <tr>
            <td>Base URL</td>
            <td></td>
            <td>https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1</td>
        </tr>
        <tr>
            <td style="padding-left:20px">CRID Lookup/Assignment</td>
            <td>PUT</td>
            <td>https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/CRID</td>
        </tr>
        <tr>
            <td style="padding-left:20px">FHIR Resources</td>
            <td><a href="https://hl7.org/fhir/http.html">POST (Create),<br /> PUT (Update),<br /> GET (Read, Search)</a></td>
            <td>https://dev-api.nmdp.org/cibmtr-fhir-backend-exttest/v1/r4/&lt;resource&gt;<br/><br />
                <em>(replace &lt;resource&gt; with the FHIR resource, e.g., Patient, Observation, etc)</em></td>
        </tr>
    </tbody>
</table>
{:.grid}-->

#### Production Test 
Used to test production client workflows with non-production data

<table>
    <thead>
        <tr>
            <th>Service</th>
            <th>HTTP</th>
            <th>Endpoint</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Access Credentials</td>
            <td>POST</td>
            <td>https://oktapreview.nmdp.org/oauth2/ausaexcazhLhxKnJs0h7/v1/token</td>
        </tr>
        <tr>
            <td>Base URL</td>
            <td></td>
            <td>https://int-api.nmdp.org/cibmtr-fhir-backend/v1</td>
        </tr>
        <tr>
            <td style="padding-left:20px">CRID Lookup/Assignment</td>
            <td>PUT</td>
            <td>https://int-api.nmdp.org/cibmtr-fhir-backend/v1/CRID</td>
        </tr>
        <tr>
            <td style="padding-left:20px">FHIR Resources</td>
            <td><a href="https://hl7.org/fhir/http.html">POST (Create),<br /> PUT (Update),<br /> GET (Read, Search)</a></td>
            <td>https://int-api.nmdp.org/cibmtr-fhir-backend/v1/r4/&lt;resource&gt;<br/><br />
                <em>(replace &lt;resource&gt; with the FHIR resource, e.g., Patient, Observation, etc)</em></td>
        </tr>
    </tbody>
</table>
{:.grid}

#### Production
<table>
    <thead>
        <tr>
            <th>Service</th>
            <th>HTTP</th>
            <th>Endpoint</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Access Credentials</td>
            <td>POST</td>
            <td>https://okta.nmdp.org/oauth2/aus3ck6q30qmOdpMb1t7/v1/token</td>
        </tr>
        <tr>
            <td>Base URL</td>
            <td></td>
            <td>https://api.nmdp.org/cibmtr-fhir-backend/v1</td>
        </tr>
        <tr>
            <td style="padding-left:20px">CRID Lookup/Assignment</td>
            <td>PUT</td>
            <td>https://api.nmdp.org/cibmtr-fhir-backend/v1/CRID</td>
        </tr>
        <tr>
            <td style="padding-left:20px">FHIR Resources</td>
            <td><a href="https://hl7.org/fhir/http.html">POST (Create),<br /> PUT (Update),<br /> GET (Read, Search)</a></td>
            <td>https://api.nmdp.org/cibmtr-fhir-backend/v1//r4/&lt;resource&gt;<br/><br />
                <em>(replace &lt;resource&gt; with the FHIR resource, e.g., Patient, Observation, etc)</em></td>
        </tr>
    </tbody>
</table>
{:.grid}

The CIBMTR FHIR resource API only supports <a href="https://hl7.org/fhir/http.html#create">Create (POST)</a>, <a href="https://hl7.org/fhir/http.html#update">Update (PUT)</a>, <a href="https://hl7.org/fhir/http.html#read">Read (GET)</a>, and <a href="https://hl7.org/fhir/http.html#search">Search (GET)</a>, and <a href="https://hl7.org/fhir/http.html#capabilities">Capabilities (GET)</a> interactions.

{% include link-list.md %}
