<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyBook | Login</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
  <div class="container" id="container">
        <div class="form-container sign-in-container">
            <form method="post" action="Login" name="LoginForm" onsubmit="return validate();">
                <h1>Sign in</h1>
                <input type="text" name="txt_username" placeholder="Username" />
                <input type="password" name="txt_password" placeholder="Password" />
                <input type ="submit" name="btn_login" value="sign in"/>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>Enter your personal details and start journey with us</p>
                    <a href="Register">SigN up</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>