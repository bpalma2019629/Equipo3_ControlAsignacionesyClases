<%-- 
    Document   : alumno
    Created on : 31/08/2021, 07:08:39 PM
    Author     : garci
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Alumnos</title>
    </head>
    <body>
        <h1>Listado Alumnos</h1>
        
        <table border 1>
            <thead>
            <tr>
                <th>#</th>
                <th>Nombre</th>
                <th>email</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="alumno" items="${listadoAlumno}">
                    <tr>
                        <td>${alumno.carne}</td>
                        <td>${alumno.nombres}${alumno.apellidos}</td>
                        <td>${alumno.email}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletAlumnoController?accion=eliminar&carne=${alumno.carne}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div>
       
        </div>  
    </body>
</html>
