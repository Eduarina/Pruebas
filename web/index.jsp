<%-- 
    Document   : index
    Created on : 13/04/2018, 11:31:53 PM
    Author     : Eduardo Soriano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Servicios Bioclinicos. Index</title>
    <link rel="stylesheet" href="css/movil.css" media="handheld, only screen and (max-width: 480px)">
    <link rel="stylesheet" href="css/main.css" media="screen and (min-width:481px)">
    <link href="https://fonts.googleapis.com/css?family=Lora|Oxygen|Quicksand|Tajawal" rel="stylesheet">
    <link rel="stylesheet" href="css/menu.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/myScript.js"></script>
</head>
<body>
        <jsp:include page="menu.html"></jsp:include>    
    <main>
        <aside id="der">
            <h2>Bienvenido Usuario</h2>
            <img src="img/logo.jpg" alt="">
        </aside>
        <aside id="top">
            <h3>Ultimos Pacientes Atendidos</h4>
            <hr>
            <table>
                <tr>
                    <th>Eduardo Soriano López</th>
                </tr>
                <tr>
                    <th>Karina Soriano López</th>
                </tr>
                <tr>
                    <th>Karen Martinez Hernandez</th>
                </tr>
                <tr>
                    <th>Isaias Espiridion Benequen</th>
                </tr>
                <tr>
                    <th>Luis Felipe Marin Urias</th>
                </tr>
            </table>
        </aside>
        <aside id="bottom">
            <h3>Ultimos Analisis Realizados</h4>
            <hr>
            <table>
                <tr>
                    <th>Quimica Sanguinea (3 Elementos)</th>
                </tr>
                <tr>
                    <th>Perfil Cardiaco</th>
                </tr>
                <tr>
                    <th>Biometría Hemática Completa</th>
                </tr>
                <tr>
                    <th>Biometría Hemática Completa</th>
                </tr>
                <tr>
                    <th>Lipidos</th>
                </tr>
            </table>
        </aside>
        
    </main>
    <footer>
        
    </footer>
</body>
</html>
