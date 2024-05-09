<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Étudiants</title>
</head>
<body>
<h1>Liste des Étudiants</h1>

<table border="1">
    <thead>
    <tr>
        <th>Numéro de Matricule</th>
        <th>Nom</th>
        <th>E-mail</th>
        <th>Téléphone</th>
        <th>Adresse</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.phone}</td>
            <td>${student.address}</td>
            <td>
                <form action="<c:url value='/deleteStudent'/>" method="post">
                    <input type="hidden" name="id" value="${student.id}">
                    <input type="submit" value="Supprimer">
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h2>Ajouter un Étudiant</h2>
<form action="<c:url value='/saveStudent'/>" method="post">
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
    <input type="submit" value="Ajouter Étudiant">
</form>

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
    <input type="submit" value="Modifier Étudiant">
</form>

</body>
</html>
