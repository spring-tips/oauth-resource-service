# Oauth Resource Service

This example uses the [Baeldung embedded Keycloak instance ](https://github.com/Baeldung/spring-security-oauth/tree/master/oauth-rest/oauth-authorization-server) as the authorization server, which is in turn enabled by work that former Spring teammate Thomas Darimont put together. 

The client starts up and connects to that OAuth authorization server. 

This command will give you a token:

`curl  http://localhost:8083/auth/realms/baeldung/protocol/openid-connect/token -dgrant_type=password -dclient_id=newClient -dclient_secret=newClientSecret -dusername=mike@other.com -dpassword=pass && echo `

Using the Baeldung sample

If you have `jq`, you can do:

```
export TOKEN=`curl  http://localhost:8083/auth/realms/baeldung/protocol/openid-connect/token -dgrant_type=password -dclient_id=newClient -dclient_secret=newClientSecret -dusername=mike@other.com -dpassword=pass | jq -r .access_token`
```

which will save the token as an env variable

Then you can do:

```
curl -H "Authorization: Bearer $TOKEN" http://localhost:8080/hello
```

