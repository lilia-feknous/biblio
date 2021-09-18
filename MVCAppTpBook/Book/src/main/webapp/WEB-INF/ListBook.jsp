<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="css/book.css" rel="stylesheet">
<title>MyBook | ListBook</title>
</head>
<body>
<header>
        <a href="Home" class="logo">MyBooks</a>
        <div class="menu-toggle"></div>
        <nav>
            <ul>
            <li><a href="Home">Home</a></li>
            <li><a href="ListBook" class="active">Books</a></li>
            <li><a href="Add">AddBook</a></li>
            <li><a href="Logout?action=Logout" >Logout</a></li>
            </ul>
        </nav>
        <div class="clearfix"></div>
 </header>
<div class="container-lg">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-8"><h2>Books <b>List</b></h2></div>
                        <div class="col-sm-4">
                            <a href="Add" class="btn btn-info add-new"><i class="fa fa-plus"></i> Add New</a>
                        </div>
                    </div>
                    </div>
        <table  class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
          <a href="Edit?action=Edit&id=<c:out value="${book.id}"/>" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
          <a href="Delete?action=Delete&id=<c:out value="${book.id}"/>" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                   
                </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>  
  </div>  
  </div>  
</body>
</html>