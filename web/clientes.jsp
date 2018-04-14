<%-- 
    Document   : clientes
    Created on : 13/04/2018, 11:37:11 PM
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
	<header>
		<div class="box">
  			<div class="container-1">
                <form action="hola.html">
                <input type="search" id="search" placeholder="Buscar..." />
                </form>
            </div>
        </div>
        <img src="img/logo.jpg" alt="Bienvenido">
    </header>
        <jsp:include page="menu.html"></jsp:include>
    <main>
       <div id="info">
           <h2><a onclick="abrirEncima()">Agregar Cliente</a></h2>
           <div id="bInfo">
               <form action="">
                   <label>Buscar: </label>
                   <input type="text" placeholder="Busqueda">
                   <input type="submit" id="BbInfo">
               </form>
           </div>
           <table>
               <tr>
                   <th>Nombre</th>
                   <th>RFC</th>
                   <th>Telefono</th>
               </tr>
               <tr>
                   <td>Eduardo Soriano Lopez</td>
                   <td>SOLE971203</td>
                   <td>2291847482</td>
               </tr>
           </table>
       <div id="pag">
           Aqui proximamente iria un paginador
       </div>
       <br><br>
       </div>
    </main>
    <footer>
        
    </footer>

    <div id="encima">
        <div id="form">
            <form action="">
                <div class="banDatos"><h2>Datos Generales:</h2></div>
                <div id="sub">
                    <a class="cerrar" onclick="cerrarEncima()">Close [X]</a>
                    <table>
                        <tr>
                            <th><label for="">Nombre:</label></th>
                            <td><input type="text" class="wrande" placeholder="Nombre"></td>
                        </tr>
                        <tr>
                            <th><label for="">RFC:</label></th>
                            <td><input type="text" class="wrande" placeholder="RFC" id="rfc" max="9999999999"></td>
                        </tr>
                        <tr>
                            <th><label for="">Correo</label></th>
                            <td><input type="email" class="wrande" placeholder="example@example.com"></td>
                        </tr>
                        <tr>
                            <th><label for="">Telefono:</label></th>
                            <td><input type="number" class="wrande" maxlength="10"></td>
                        </tr>
                    </table>
                </div>

                <div class="banDatos"><h2><a onclick="abrirEditable()">Domicilio:</a></h2></div>
                    <div id="editable">
                        <label>Calle: </label> <input class="wrande" type="text">
                        <label>Num Exterior: </label> <input class="small" type="number">
                        <label>Num Interior: </label> <input class="small" type="number"><br>
                        <label>Colonia: </label> <input class="wrande" type="text">
                        <label>C.P. </label> <input class="small" type="number"><br>
                        <label>Ciudad: </label> <input class="middle" type="text">
                        <label>Municipio: </label> <input class="middle" type="text">
                        <label>Estado: </label> <input class="middle" type="text">
                        <label>Pais: </label> <input class="middle" type="text">
                        <br>
                        <input type="submit">
                    </div>

            </form>
        </div>
    </div>

</body>
</html>