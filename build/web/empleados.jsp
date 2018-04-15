<%-- 
    Document   : empleados
    Created on : 13/04/2018, 11:37:11 PM
    Author     : Eduardo Soriano
--%>
<%@page import="com.Prueba1.*, java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Servicios Bioclinicos. Index</title>
    <link rel="stylesheet" href="css/movil.css" media="handheld, only screen and (max-width: 480px)">
    <link rel="stylesheet" href="css/main.css"  media="screen and (min-width:481px)">
    <link href="https://fonts.googleapis.com/css?family=Lora|Oxygen|Quicksand|Tajawal" rel="stylesheet">
    <link rel="stylesheet" href="css/menu.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/myScript.js"></script>
</head>
<body>
        <jsp:include page="menu.html"></jsp:include>
    <main>
       <div id="info">
           <h2><a onclick="abrirEncima()">Nuevo Empleado</a></h2>
           <div id="bInfo">
               <form action="">
                   <label>Buscar: </label>
                   <input type="text" placeholder="Busqueda">
                   <input type="submit" id="BbInfo">
               </form>
           </div>
           <table>
               <tr>
                   <th>Nombre </th>
               </tr>
               <div id="ocultar">
                <%
                    List<Empleados> emp = (List<Empleados>) request.getAttribute("Empleados");
                    Iterator<Empleados> it = emp.iterator();
                    while(it.hasNext()){
                        out.print(it.next().toString());
                    }
                %>    
               </div>
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
            <form name="form1" method="get" action="ControladorEmpleados">
                <input type="hidden" name="instruccion" value="inserta">
                <div class="banDatos"><h2>Datos Generales:</h2></div>
                <div id="sub">
                    <a class="cerrar" onclick="cerrarEncima()">Close [X]</a>
                    <table>
                        <tr>
                            <th><label for="">Nombre:</label></th>
                            <td><input type="text" name="name" class="wrande" placeholder="Nombre"></td>
                        </tr>
                        <tr>
                            <th><label for="">Apellido Paterno:</label></th>
                            <td><input type="text" name="ap1" class="wrande" placeholder="Apellido Paterno"></td>
                        </tr>
                        <tr>
                            <th><label for="">Apellido Materno:</label></th>
                            <td><input type="text" name="ap2" class="wrande" placeholder="Apellido Materno"></td>
                        </tr>
                        <tr>
                            <input type="submit" value="Agregar"/>
                        </tr>
                    </table>
            </form>
        </div>
    </div>

</body>
</html>