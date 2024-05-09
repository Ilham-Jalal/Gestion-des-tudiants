<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.transparenttextures.com/patterns/45-degree-fabric-light.png');
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            text-align: center;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        p {
            color: #666;
            margin-bottom: 20px;
        }
        a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 3px;
        }
        a:hover {
            background-color: #0056b3;
        }
        .logo {
            max-width: 200px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <img src="https://ecoledz.weebly.com/uploads/3/1/0/6/31060631/published/kids-7_3.png" width="50%" HEIGHT="70%" alt="img" class="logo">
    <h1>Bienvenue sur notre application!</h1>
    <p>Merci de visiter notre site. Vous pouvez accéder à la liste des étudiants en cliquant sur le lien ci-dessous :</p>
    <a href="${pageContext.request.contextPath}/students">Voir la liste des étudiants</a>
</div>
</body>
</html>
