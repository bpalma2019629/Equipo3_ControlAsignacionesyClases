<%-- 
    Document   : index
    Created on : 25/08/2021, 09:27:32 AM
    Author     : Brandon Andree Palma Hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Página Principal</h1>
        
        <a href="${pageContext.request.contextPath}/ServletAlumnoController?accion=listar">Listar Alumno</a><br>
        <a href="${pageContext.request.contextPath}/ServletSalonController?accion=listar">Listar Salones</a><br>
        <a href="${pageContext.request.contextPath}/ServletHorarioController?accion=listar">Listar Horarios</a><br>
        <a href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=listar">Listar Carreras Tecnicas</a><br>
        <a href="${pageContext.request.contextPath}/ServletInstructorController?accion=listar">Listar Instructores</a><br>
        <a href="${pageContext.request.contextPath}/ServletCursoController?accion=listar">Listar Cursos</a><br>
        <a href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=listar">Listar Asignaciones</a><br>
    </body>
</html>
