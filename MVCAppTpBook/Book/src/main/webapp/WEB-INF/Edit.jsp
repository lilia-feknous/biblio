<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyBook | EditBook</title>
<link href="css/crud.css" rel="stylesheet">
</head>
<body>
<div class="form-style-8 ">
    <h2> <c:if test="${book != null}">Edit book     </c:if></h2>
    <c:if test="${book != null}">
    <form method="post" action="Edit" name="Edit" onsubmit="return validate();">
      <c:if test="${book != null}">
      <input type="hidden" name="id" value="<c:out value='${book.id}' />" />
      </c:if>  
      <input type="text" name="title"   value="<c:out value='${book.title}' />" placeholder="Title" />
      <input type="text" name="author"   value="<c:out value='${book.author}' />" placeholder="Author" />
      <input type="number" name="price"  value="<c:out value='${book.price}' />" placeholder="Price" />
      <input type="submit" name="btn_edit" value="Save" />
    </form>
     </c:if>
  </div>
</body>
</html>