<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier un Étudiant</title>
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
            font-weight: bold;
        }

        input[type="text"] {
            width: calc(100% - 20px);
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
    <h2>Modifier un Étudiant</h2>
    <form action="${pageContext.request.contextPath}/updateStudent" method="post">
        <input type="hidden" id="id" name="id" value="${student.id}" required>
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
</div>
</body>
</html>
