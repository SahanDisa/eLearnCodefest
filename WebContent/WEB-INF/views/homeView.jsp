<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>Home Page</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  </head>
  <body>
 
     <jsp:include page="header.jsp"></jsp:include>
     <jsp:include page="menu.jsp"></jsp:include>
    
      <h3>Home Page</h3>
      
      This is The Home Page we you log into the page <br><br>
      <b>It includes the following functions:</b>
      <ul>
         <li>Login</li>
         <li>Storing user information in cookies</li>
         <li>Product List</li>
         <li>Create Product</li>
         <li>Edit Product</li>
         <li>Delete Product</li>
         <a href="index.html">Profile</a>
         
      </ul>
 	
     <jsp:include page="footer.jsp"></jsp:include>
 	<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/main.js" />"></script>
 	
  </body>
</html>