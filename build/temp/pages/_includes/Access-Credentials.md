### Access Credentials for CIBMTR Direct FHIR API
A CIBMTR relationship manager or technical lead can initiate a request for API credentials.  CIBMTR uses OAuth2.0/OpenID (OIDC) for authentication and access management.  This process involves making a request to a third-party authorization server to receive a token.  The token is then passed to the CIBMTR API URL in the request header.  The following information will be provided by CIBMTR and is necessary for requesting an authorization token : 

- CIBMTR Service Account Username
- Application Client ID
- Application Client Secret
- Application Scope

Different sets of credentials will be provided for the CIBMTR test and production environments.  

To request an authentication token for any of the test environments, the third-party authorization server URL is:
~~~
POST    https://oktapreview.nmdp.org/oauth2/ausaexcazhLhxKnJs0h7/v1/token
~~~

To request an authentication token for the production environment, the third-party authorization server URL is: 

~~~
POST    https://okta.nmdp.org/oauth2/aus3ck6q30qmOdpMb1t7/v1/token
~~~

The header of the POST request to the authorization server must have an authorization string.  The string is constructed by base64 encoding the Application Client ID, a colon, and the Application Client Secret.  The encoded string is then appended to the word `Basic `.  For example, here is a snippet of psuedocode showing this. 

~~~
const auth_string = "Basic " + base64("<Application Client ID>" + ":" + "<Application Client Secret>")
~~~

***Note: The Application Client ID and Application Secret are different in the production and test environments and are specific to the CIBMTR Service Account.***

An example of the header parameters for the POST request to the authorization server using the Postman API client tool (https://www.postman.com) is shown in Figure 1.  In the figure, the authorization string is blacked out.  Notice the space between the base 64 encoded string and the string prefix, `Basic`.   

|![Figure 1](dfhir_r3_figure01.png){: width="50%"} |
|:--:|
| <i>Figure 1: Example header information for the POST request to the authorization server</i>|


Figure 2 below shows the required fields in the body of the POST request to the authorization server API. The value for the `username` key is the CIBMTR Service Account Username provided by CIBMTR.   The value for the `password` key is the CIBMTR Service Account Password.  The `grant_type` key and the `scope` key have the same values as shown in Figure 2.  The response to the POST request will return a JSON object that includes a base64 encoded token.  The token can be a long character string (over 1000 chars). 

|![Figure 2](dfhir_r3_figure02.png){: width="50%"}|
|:--:|
| <i>Figure 2: Required POST fields to submit for the authorization token.</i>|

Once the token has been received, a request to the CIBMTR Direct FHIR service API can be made. Tokens are valid for 30 minutes in the production environment, but last up to 24 hours in the test environment.  Applications must cache and re-use tokens until they are about to expire because Okta rate limits requests for new tokens. One workable strategy is to obtain a new token every 25 minutes. 

|![Figure 3](dfhir_r3_figure03.png){: width="50%"}|
|:--:|
| <i>Figure 3: Example CIBMTR Direct FHIR API request using a bearer authorization token in the header of the request.</i>|

To make a request to the CIBMTR Direct FHIR Backend API, include the token in the header as the authorization key value of the request along with the word `Bearer ` in front of it, as shown in Figure 3.

### Example Code

#### Request Authorization Token
{% include example-code-req-auth-token.md %}

{% include link-list.md %}