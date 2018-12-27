Spring boot session handling using Spring Security with basic Session Id.
Also sharing the database script with data.

First run the sql script and then run the project.
you can hit localhost:8080/unsecure/hello without loging in but while hitting the secured api
i.e. localhost:8080/secure/hello you will get 403 - forbidden error

for secure/hello you will have to login you can use postman here.
url : POST -> localhost:8080/login/userLogin
body : 
{
	"userName":"vishal",
	"password":"vishal"
}

you will get a response like :

{
    "userName": "vishal",
    "sessionId": "949e4ee2-ac2c-4d65-ab73-852f89bc09ff",                        <--- Session Id here
    "validUserName": true,
    "loginSuccess": true
}

copy the session id

now hit secured api
url : GET -> localhost:8080/unsecure/hello

// add header now while calling
header -> x-auth-token : 949e4ee2-ac2c-4d65-ab73-852f89bc09ff                    <paste the session id>

You can now successfully hit secured api while you are logged in
