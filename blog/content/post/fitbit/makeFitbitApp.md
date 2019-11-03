+++
title = "Make a Fitbit App"
date = "2018-02-04T9:00:00"
tags = ["fitbit", "go"]
categories = ["fitbit"]
banner = "images/blog/finder.png"
+++

# Register new App
website for register app [ https://dev.fitbit.com/apps/new ]( https://dev.fitbit.com/apps/new )

## Go github projectsSwagger Inspector i

https://github.com/stapelberg/fitbit-backup
https://github.com/ippoippo/bulkfitbitdownloader


## My App details

https://dev.fitbit.com/apps/details/22CLYW

OAuth 2.0 Client ID 
22CLYW

Client Secret
3f453c0d41e0eb317b19aaa9e4389ce7

Callback URL
http://localhost:8189/auth_code

OAuth 2.0: Authorization URI
https://www.fitbit.com/oauth2/authorize

OAuth 2.0: Access/Refresh Token Request URI
https://api.fitbit.com/oauth2/token 


## Test website for fitbit data

https://dev.fitbit.com/apps/oauthinteractivetutorial?clientEncodedId=22CLYW&clientSecret=3f453c0d41e0eb317b19aaa9e4389ce7&redirectUri=http://localhost:8189/auth_code

## fetbit web API tester
https://dev.fitbit.com/build/reference/web-api/explore/


http://localhost:8189/auth_code
#access_token=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2RDdNTVMiLCJhdWQiOiIyMkNMWVciLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd251dCB3cHJvIHdzbGUgd3dlaSB3c29jIHdzZXQgd2FjdCB3bG9jIiwiZXhwIjoxNTE3ODE5MTE1LCJpYXQiOjE1MTc3MzI3MTV9.dfzgRPybQOwii8HePCE14Ba7wAfqYXK6QaF3-PgaXjQ&user_id=6D7MMS&scope=settings+sleep+location+social+weight+nutrition+activity+heartrate+profile&token_type=Bearer&expires_in=86400

## Command for testing in cli.

```bash
curl -i localhost:8189/auth_code#access_token=eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiI2RDdNTVMiLCJhdWQiOiIyMkNMWVciLCJpc3MiOiJGaXRiaXQiLCJ0eXAiOiJhY2Nlc3NfdG9rZW4iLCJzY29wZXMiOiJ3aHIgd251dCB3cHJvIHdzbGUgd3dlaSB3c29jIHdzZXQgd2FjdCB3bG9jIiwiZXhwIjoxNTE3ODE5MTE1LCJpYXQiOjE1MTc3MzI3MTV9.dfzgRPybQOwii8HePCE14Ba7wAfqYXK6QaF3-PgaXjQ&user_id=6D7MMS&scope=settings+sleep+location+social+weight+nutrition+activity+heartrate+profile&token_type=Bearer&expires_in=86400
```

## test with curl
```bash
curl -i -H "Authorization: Bearer eyJhbGciOiJIUdzbGUgd3dlaSB3c29jIHdzZXQgd2FjdCB3bG9jIiwiZXhwIjoxNTE3ODE5MTE1LCJpYXQiOjE1MTc3MzI3MTV9.dfzgRPybQOwii8HePCE14Ba7wAfqYXK6QaF3-PgaXjQ" https://api.fitbit.com/1/user/-/profile.json
```

```javascript
var url = 'http://localhost:3000/_oauth/google#access_token=ya29.5HxuYol1Io8JLeGePDznbfkkwu_PC4uodKwG8_1clFYAn9AgdOV1WGpOTNQP3s76HAsn7Y4zWw&token_type=Bearer&expires_in=3600',
    access_token = url.match(/\#(?:access_token)\=([\S\s]*?)\&/)[1];
```