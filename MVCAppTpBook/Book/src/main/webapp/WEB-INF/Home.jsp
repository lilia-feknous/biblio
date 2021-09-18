<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyBook | Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/home.css" rel="stylesheet">
</head>
<body>
<header>
    <a href="Home" class="logo">MyBooks</a>
    <div class="menu-toggle"></div>
    <nav>
        <ul>
            <li><a href="Home" class="active">Home</a></li>
            <li><a href="ListBook">Books</a></li>
            <li><a href="Add">AddBook</a></li>
            <li><a href="Logout?action=Logout" >Logout</a></li>
        </ul>
    </nav>
    <div class="clearfix"></div>
</header>
<div class="container">

    <input type="radio" name="slider" id="slide-1-trigger" class="trigger" checked>
    <label class="btn" for="slide-1-trigger"></label>
    <input type="radio" name="slider" id="slide-2-trigger" class="trigger">
    <label class="btn" for="slide-2-trigger"></label>
    <input type="radio" name="slider" id="slide-3-trigger" class="trigger">
    <label class="btn" for="slide-3-trigger"></label>
    <input type="radio" name="slider" id="slide-4-trigger" class="trigger">
    <label class="btn" for="slide-4-trigger"></label>

   
    <div class="slide-wrapper">
        <div id="slide-role">
            <div class="slide slide-1"></div>
            <div class="slide slide-2"></div>
            <div class="slide slide-3"></div>
            <div class="slide slide-4"></div>
        </div>
    </div>

</div>

</body>
</html>