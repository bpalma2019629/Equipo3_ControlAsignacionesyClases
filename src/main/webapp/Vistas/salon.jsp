<%-- 
    Document   : Classroom
    Created on : 30/08/2021, 07:52:56 PM
    Author     : Kenneth Gerardo García Lemus
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salones</title>
    </head>
    <body>
        <h1>Lista de Salones</h1>
        
        
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Capacidad</th>
                    <th>Descripción</th>
                    <th>Nombre del salón</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="salon" items ="${listadoSalones}">
                    <tr>
                        <td>${salon.salonId}</td>
                        <td>${salon.capacidad}</td>
                        <td>${salon.descripcion}</td>
                        <td>${salon.nombreSalon}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletSalonController?accion=eliminar&salonId=${salon.salonId}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div><br>
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        </div>  
    </body>
</html>
