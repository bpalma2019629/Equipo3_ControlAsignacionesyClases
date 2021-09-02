<%-- 
    Document   : curso
    Created on : 28/08/2021, 11:57:58 AM
    Author     : Juan Diego Solís Martínez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Cursos</title>
    </head>
    <body>
        <h1>Listado cursos</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Ciclo</th>
                    <th>Cupo Máximo</th>
                    <th>Cupo Mínimo</th>
                    <th>Descripción</th>
                    <th>Código Carrera</th>
                    <th>Nombre Carrera</th>
                    <th>Horario Id</th>
                    <th>Horario Final</th>
                    <th>Horario Inicio</th>
                    <th>Instructor Id</th>
                    <th>Nombre Instructor</th>
                    <th>Salón Id</th>
                    <th>Descripción Salon</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="curso" items="${listadoCurso}">
                    <tr>
                        <td>${curso.cursoId}</td>
                        <td>${curso.ciclo}</td>
                        <td>${curso.cupoMaximo}</td>
                        <td>${curso.cupoMinimo}</td>
                        <td>${curso.descripcion}</td>
                        <td>${curso.codigoCarrera}</td>
                        <td>${curso.nombre}</td>
                        <td>${curso.horarioId}</td>
                        <td>${curso.horaFinal}</td>
                        <td>${curso.horaInicio}</td>
                        <td>${curso.instructorId}</td>
                        <td>${curso.nombres}</td>
                        <td>${curso.salonId}</td>
                        <td>${curso.descripcion}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletCursoController?accion=eliminar&cursoId=${curso.cursoId}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>