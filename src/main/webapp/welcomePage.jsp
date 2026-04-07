<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application de gestion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f0f2f5;
    }
    .container-custom {
        max-width: 500px;
        margin: 80px auto;
    }
    .card-custom {
        background: white;
        border-radius: 10px;
        padding: 30px;
        text-align: center;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    .btn {
        margin: 10px 0;
        padding: 10px 20px;
    }
</style>
</head>
<body>

<div class="container-custom">
    <div class="card-custom">
        <h1 class="h3 mb-4">Bienvenue dans l'application de gestion</h1>
        
        <input type="button" class="btn btn-primary w-100" value="Ajouter un client"
               onclick="window.location.href='addClt.jsp'"/>
        
        <input type="button" class="btn btn-success w-100" value="Ajouter une reservation"
               onclick="window.location.href='addRsv.jsp'"/>
        
        <hr class="my-4">
        <p class="text-muted small">Application de gestion des réservations © 2026</p>
    </div>
</div>

</body>
</html>