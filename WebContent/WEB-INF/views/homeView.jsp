<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>Home Page</title>
     <link href="<c:url value="bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
     
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