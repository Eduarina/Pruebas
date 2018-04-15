<%-- 
    Document   : listaEmpleados
    Created on : 14/04/2018, 08:13:40 PM
    Author     : Eduardo Soriano
--%>
<%@page import="java.util.*, com.Prueba1.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div>{{ HTML::link('cerrarSesion', 'Cerrar Sesion') }}</div>
        <%
            List<Empleados> emp = (List<Empleados>) request.getAttribute("Empleados");
        %>
        <%= emp %> 
    </body>
</html>
