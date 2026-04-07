<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajouter un client</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f0f2f5;
    }
    .container-custom {
        max-width: 500px;
        margin: 50px auto;
    }
    .card-custom {
        background: white;
        border-radius: 10px;
        padding: 30px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }
    .error-box {
        background-color: #f8d7da;
        border-left: 4px solid #dc3545;
        padding: 12px;
        margin-bottom: 20px;
        border-radius: 5px;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        font-weight: 500;
        margin-bottom: 5px;
        display: block;
    }
    .form-control {
        width: 100%;
        padding: 8px 12px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    .btn-submit {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        width: 100%;
        font-size: 16px;
        cursor: pointer;
    }
    .btn-submit:hover {
        background-color: #218838;
    }
</style>
</head>
<body>

<%
    // Variable pour afficher ou non l'erreur
    boolean showError = false;
    
    // Récupérer les valeurs du formulaire
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String tel = request.getParameter("tel");
    String email = request.getParameter("email");
    
    // Vérifier si le formulaire a été soumis (si un paramètre existe)
    if (nom != null || prenom != null || tel != null || email != null) {
        
        // Vérifier si AU MOINS UN champ est vide
        if (nom == null || nom.trim().isEmpty() ||
            prenom == null || prenom.trim().isEmpty() ||
            tel == null || tel.trim().isEmpty() ||
            email == null || email.trim().isEmpty()) {
            
            // Cas 1: Formulaire soumis MAIS champs vides → Afficher erreur
            showError = true;
            
        } else {
            // Cas 2: Formulaire soumis ET tous les champs sont remplis → Rediriger vers succès
            request.setAttribute("nom", nom);
            request.setAttribute("prenom", prenom);
            request.setAttribute("tel", tel);
            request.setAttribute("email", email);
            request.getRequestDispatcher("client.jsp").forward(request, response);
            return;
        }
    }
%>

<div class="container-custom">
    <div class="card-custom">
        
        <!-- Afficher l'erreur SEULEMENT si showError = true -->
        <% if (showError) { %>
        <div class="error-box">
            <strong>Ooops, erreur !!!</strong><br>
            Vous devez remplir tous les champs
        </div>
        <% } %>
        
        <h2 class="h4 mb-4">Ajouter un client :</h2>
        <h5 class="h6 text-muted mb-3">Espace client</h5>
        
        <form method="post" action="addClt.jsp">
            <div class="form-group">
                <label>Nom</label>
                <input type="text" name="nom" class="form-control" value="<%= nom != null ? nom : "" %>" >
            </div>
            
            <div class="form-group">
                <label>Prénom</label>
                <input type="text" name="prenom" class="form-control" value="<%= prenom != null ? prenom : "" %>" >
            </div>
            
            <div class="form-group">
                <label>Téléphone</label>
                <input type="text" name="tel" class="form-control" value="<%= tel != null ? tel : "" %>" >
            </div>
            
            <div class="form-group">
                <label>E-mail</label>
                <input type="email" name="email" class="form-control" value="<%= email != null ? email : "" %>">
            </div>
            
            <button type="submit" class="btn-submit mt-3">Ajouter Client</button>
        </form>
        
        <hr class="my-4">
        <p class="text-muted small text-center">Application de gestion des réservations © 2026</p>
    </div>
</div>

</body>
</html>