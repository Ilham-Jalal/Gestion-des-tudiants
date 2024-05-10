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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
        .navbar {
            background: rgba(7, 7, 73, 0.7);
            backdrop-filter: blur(10px);
            color: #fff;
            padding: 10px 0;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            margin-bottom: 20px;
        }

        .navbar h1 {
            margin: 0;
            font-size: 24px;
            text-align: center;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
        }

        .navbar ul li {
            margin-right: 20px;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s ease;
            display: flex;
            align-items: center;
        }

        .navbar ul li a i {
            margin-right: 5px;
        }

        .navbar ul li a:hover {
            color: #007bff;
        }

    </style>
</head>
<body>
<nav class="navbar" style="display: flex; justify-content: space-around">
    <h1>Ajouter un etudiant</h1>
    <ul>
        <li><a href="http://localhost:8080/demostudent_war_exploded/"><i class="fas fa-home"></i> Accueil</a></li>
        <li><a href="http://localhost:8080/demostudent_war_exploded/students"><i class="fas fa-list"></i> Liste des étudiants</a></li>
        <li><a href="http://localhost:8080/demostudent_war_exploded/saveStudent"><i class="fas fa-plus-circle"></i> Ajouter étudiant</a></li>
    </ul>
</nav>
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
