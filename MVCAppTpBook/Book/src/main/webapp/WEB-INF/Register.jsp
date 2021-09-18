<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyBook | Register</title>
<link href="css/style.css" rel="stylesheet">
</head>
<body>
    <div class="container" id="container">
        <div class="form-container sign-in-container">
            <form  method="post" action="Register" onsubmit="return validate();">
                <h1>Sign Up</h1>
                <input type="text" name="txt_firstname" id="fname" placeholder="Firstname" />
                <input type="text" name="txt_lastname" id="lname" placeholder="Lastname" />
                <input type="text" name="txt_username" id="uname" placeholder="Username" />
                <input type="password" name="txt_password" id="password"  placeholder="Password" />
                <input type ="submit" name="btn_register" value="Sign UP"/>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>Hello, Friend!</h1>
                    <p>If you already has an account, just sign in. We've missed you!</p>
                    <a href="Login">Sign in</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>