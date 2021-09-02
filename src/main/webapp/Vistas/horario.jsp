<%-- 
    Document   : horario
    Created on : 31/08/2021, 04:56:56 PM
    Author     : Brandon Andree Palma Hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Horarios</title>
    </head>
    <body>
        <h1>Listado Horarios</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>#c</th>
                    <th>Horario Inicio</th>
                    <th>Horario Final</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="horario" items="${listadoHorario}">
                    <tr>
                        <td>${horario.idHorario}</td>
                        <td>${horario.horaInicio}</td>
                        <td>${horario.horaFinal}</td>
                        <td><a href="${pageContext.request.contextPath}/ServletHorarioController?accion=eliminar&idHorario=${horario.idHorario}">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div><br>
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        </div>  
    </body>
</html>
