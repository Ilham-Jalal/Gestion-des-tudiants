<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier un Étudiant</title>
</head>
<body>
<h2>Modifier un Étudiant</h2>
<form action="${pageContext.request.contextPath}/updateStudent" method="post">
    <input type="hidden" id="id" name="id" value="${student.id}" required><br>
    <label for="name">Nom:</label>
    <input type="text" id="name" name="name" value="${student.name}" required><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email" value="${student.email}" required><br>
    <label for="phone">Téléphone:</label>
    <input type="text" id="phone" name="phone" value="${student.phone}" required><br>
    <label for="address">Adresse:</label>
    <input type="text" id="address" name="address" value="${student.address}" required><br>
    <label for="picture">URL de l'image:</label>
    <input type="text" id="picture" name="picture" value="${student.picture}" required><br>
    <input type="submit" value="Modifier Étudiant">
</form>
</body>
</html>
