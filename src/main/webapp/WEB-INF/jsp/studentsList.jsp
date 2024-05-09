<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des Étudiants</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        header img {
            max-width: 100px;
            height: auto;
            margin-bottom: 10px;
        }

        footer {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .container {
            margin: 20px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .card {
            background-color: #fff;
            border: 1px solid #e0e0e0;
            border-radius: 5px;
            padding: 15px;
            margin: 10px 0;
            width: 300px;
            display: inline-block;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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

        .card img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .actions {
            margin-top: 15px;
            text-align: center;
        }

        .actions form {
            display: inline;
            margin-right: 5px;
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
        }

        .actions input[type="submit"]:hover {
            background-color: #d32f2f;
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
        }

        a.add-student:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<header>
    <img src="https://i.pinimg.com/564x/d0/6d/9c/d06d9cd5388d4cd09a3ccf4bf4b46118.jpg" alt="Logo">
    <h1>Liste des Étudiants</h1>
</header>

<div class="container">
    <c:forEach var="student" items="${students}">
        <div class="card">
            <h2>${student.name}</h2>
            <p><strong>Numéro de Matricule:</strong> ${student.id}</p>
            <p><strong>E-mail:</strong> ${student.email}</p>
            <p><strong>Téléphone:</strong> ${student.phone}</p>
            <p><strong>Adresse:</strong> ${student.address}</p>
            <img src="${student.picture}" alt="${student.name}'s picture">
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

    <a href="${pageContext.request.contextPath}/saveStudent" class="add-student">Ajouter un Étudiant</a>
</div>

<footer>
    <p>&copy; ${year} Mon Entreprise. Tous droits réservés.</p>
</footer>

</body>
</html>
