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
    <title>Ajouter un étudiant</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Ajouter un Étudiant</h2>
    <form action="${pageContext.request.contextPath}/saveStudent" method="post">
        <label for="name">Nom:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" required><br>
        <label for="phone">Téléphone:</label>
        <input type="text" id="phone" name="phone" required><br>
        <label for="address">Adresse:</label>
        <input type="text" id="address" name="address" required><br>
        <label for="picture">URL de l'image:</label>
        <input type="text" id="picture" name="picture" required><br>
        <input type="submit" value="Ajouter Étudiant">
    </form>
</div>
</body>
</html>
