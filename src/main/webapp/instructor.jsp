<%-- 
    Author     : Omar Chocojay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Instructores</title>
    </head>
    <body>
        <h1>Listado instructores</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Apellidos</th>
                    <th>Nombres</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="instructor" items="${listadoInstructor}">
                    <tr>
                        <td>${instructor.instructorId}</td>
                        <td>${instructor.apellidos}</td>
                        <td>${instructor.nombres}</td>
                        <td>${instructor.direccion}</td>
                        <td>${instructor.telefono}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletInstructorController?accion=eliminar&instructorId=${instructor.instructorId}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
