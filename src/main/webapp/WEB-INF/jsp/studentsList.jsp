<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Liste des Étudiants</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: #333;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        header img {
            max-width: 80px;
            height: auto;
            margin-bottom: 10px;
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

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 10px;
            width: 300px;
            padding: 15px;
            display: flex;
            flex-direction: column;
        }

        .card img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 10px;
            max-height: 150px; /* Taille maximale de l'image ajustée */
        }

        .card h2 {
            color: #333;
            font-size: 20px;
            margin-bottom: 10px;
        }

        .card p {
            color: #666;
            margin-bottom: 5px;
        }

        .actions {
            margin-top: auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .actions form {
            display: inline;
        }

        .actions input[type="submit"] {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 8px 12px;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .actions input[type="submit"]:hover {
            background-color: #e57373;
            transform: scale(1.05);
        }

        a.add-student {
            display: block;
            width: 200px;
            margin: 20px auto;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        a.add-student:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
<nav class="navbar" style="display: flex; justify-content: space-around">
    <h1>Liste des Étudiants</h1>
    <ul>
        <li><a href="http://localhost:8080/demostudent_war_exploded/"><i class="fas fa-home"></i> Accueil</a></li>
        <li><a href="http://localhost:8080/demostudent_war_exploded/students"><i class="fas fa-list"></i> Liste des films</a></li>
        <li><a href="http://localhost:8080/demostudent_war_exploded/saveStudent"><i class="fas fa-plus-circle"></i> Ajouter film</a></li>
    </ul>
</nav>
<div class="container">
    <c:forEach var="student" items="${students}">
        <div class="card">
            <img src="${student.picture}" alt="${student.name}'s picture">
            <h2>${student.name}</h2>
            <p><strong>Numéro de Matricule:</strong> ${student.id}</p>
            <p><strong>E-mail:</strong> ${student.email}</p>
            <p><strong>Téléphone:</strong> ${student.phone}</p>
            <p><strong>Adresse:</strong> ${student.address}</p>
            <div class="actions">
                <form action="${pageContext.request.contextPath}/deleteStudent" method="post">
                    <input type="hidden" name="id" value="${student.id}">
                    <input type="submit" value="Supprimer">
                </form>
                <form action="${pageContext.request.contextPath}/updateStudent/${student.id}" method="get">
                    <input type="submit" value="Modifier">
                </form>
            </div>
        </div>
    </c:forEach>
</div>
<a href="${pageContext.request.contextPath}/saveStudent" class="add-student">Ajouter un Étudiant</a>
</body>

</html>
