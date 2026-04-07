<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client ajouté</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f0f2f5;
    }
    .container-custom {
        max-width: 800px;
        margin: 50px auto;
    }
    .card-custom {
        background: white;
        border-radius: 10px;
        padding: 30px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    .success-box {
        background-color: #d4edda;
        border-left: 4px solid #28a745;
        padding: 12px;
        margin-bottom: 20px;
        border-radius: 5px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
    }
    th {
        background-color: #343a40;
        color: white;
        padding: 10px;
        text-align: left;
    }
    td {
        border: 1px solid #ddd;
        padding: 10px;
    }
    .btn-retour {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }
    .btn-retour:hover {
        background-color: #0069d9;
    }
</style>
</head>
<body>

<div class="container-custom">
    <div class="card-custom">
        
        <div class="success-box">
            <strong>✓ Client ajouté avec succès</strong>
        </div>
        
        <h3 class="h5 mb-3">Affichage des données du client :</h3>
        
        <table>
            <thead>
                <tr><th>Nom</th><th>Prénom</th><th>Téléphone</th><th>E-mail</th></tr>
            </thead>
            <tbody>
                <tr>
                    <td>${nom != null ? nom : "test"}</td>
                    <td>${prenom != null ? prenom : "test"}</td>
                    <td>${tel != null ? tel : "0601020304"}</td>
                    <td>${email != null ? email : "test@gmail.com"}</td>
                </tr>
            </tbody>
        </table>
        
        <input type="button" class="btn-retour mt-3" value="Retourne au formulaire d'ajout"
               onclick="window.location.href='addClt.jsp'"/>
        
        <hr class="my-4">
        <p class="text-muted small text-center">Application de gestion des réservations © 2026</p>
    </div>
</div>

</body>
</html>