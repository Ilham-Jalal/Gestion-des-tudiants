<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 09/05/2024
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajouter un étudiant</title>
</head>
<body>
<h2>Ajouter un Étudiant</h2>
<form action="${pageContext.request.contextPath}/saveStudent" method="post">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id"><br>
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email"><br>
    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone"><br>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address"><br>
    <label for="picture">Picture URL:</label>
    <input type="text" id="picture" name="picture"><br>
    <input type="submit" value="Ajouter Étudiant">
</form>

</body>
</html>
