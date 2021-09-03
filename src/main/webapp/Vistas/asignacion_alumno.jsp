<%-- 
    Document   : asignacion_alumno
    Created on : 30/08/2021, 07:15:21 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Asignación de alumno</title>
    </head>
    <body>
        <h1>Listado de Asignación de Alumno</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Fecha de asignación</th>
                    <th>Carné</th>
                    <th>Nombre completo</th>
                    <th>Email</th>
                    <th>Curso</th>
                    <th>Ciclo</th>
                    <th>cupo máximo</th>
                    <th>cupo mínimo</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="asignacion" items="${listadoAsignacionAlumno}">
                    <tr>
                        <td>${asignacion.asignacionId}</td>
                        <td>${asignacion.fechaAsignacion}</td>
                        <td>${asignacion.carne}</td>
                        <td>${asignacion.nombreCompleto}</td>
                        <td>${asignacion.email}</td>
                        <td>${asignacion.cursoId}</td>
                        <td>${asignacion.ciclo}</td>
                        <td>${asignacion.cupoMaximo}</td>
                        <td>${asignacion.cupoMinimo}</td>
                        <td><a href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=eliminar&asignacionId=${asignacion.asignacionId}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table><br>
        <div>
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        </div>  
    </body>
</html>
