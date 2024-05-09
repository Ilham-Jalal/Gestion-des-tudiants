<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Étudiants</title>
    <style>
        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 10px;
            width: 300px;
            display: inline-block;
        }
        .card h2 {
            margin-bottom: 5px;
        }
        .card p {
            margin-bottom: 10px;
        }
        .actions {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>Liste des Étudiants</h1>

<c:forEach var="student" items="${students}">
    <div class="card">
        <h2>${student.name}</h2>
        <p><strong>Numéro de Matricule:</strong> ${student.id}</p>
        <p><strong>E-mail:</strong> ${student.email}</p>
        <p><strong>Téléphone:</strong> ${student.phone}</p>
        <p><strong>Adresse:</strong> ${student.address}</p>
        <img src="${student.picture}" alt="${student.name}'s picture" style="max-width: 100%; height: 50%;">
        <div class="actions">
            <form action="${pageContext.request.contextPath}/deleteStudent" method="post">
                <input type="hidden" name="id" value="${student.id}">
                <input type="submit" value="Supprimer">
            </form>
        </div>
    </div>
</c:forEach>

<h2>Ajouter un Étudiant</h2>
<a href="${pageContext.request.contextPath}/saveStudent">add student</a>

<h2>Modifier un Étudiant</h2>
<form action="<c:url value='/updateStudent'/>" method="post">
    <label for="updateId">ID:</label>
    <input type="text" id="updateId" name="id" required><br>
    <label for="updateName">Name:</label>
    <input type="text" id="updateName" name="name" required><br>
    <label for="updateEmail">Email:</label>
    <input type="text" id="updateEmail" name="email" required><br>
    <label for="updatePhone">Phone:</label>
    <input type="text" id="updatePhone" name="phone" required><br>
    <label for="updateAddress">Address:</label>
    <input type="text" id="updateAddress" name="address" required><br>
    <label for="updatePicture">Picture URL:</label>
    <input type="text" id="updatePicture" name="picture" required><br>
    <input type="submit" value="Modifier Étudiant">
</form>


</body>
</html>
