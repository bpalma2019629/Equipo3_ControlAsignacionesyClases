<%-- 
    Author     : Omar Chocojay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Carreras</title>
    </head>
    <body>
        <h1>Listado carreras tecnicas</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="carreraTecnica" items="${listadoCarreraTecnica}">
                    <tr>
                        <td>${carreraTecnica.codigoCarrera}</td>
                        <td>${carreraTecnica.nombre}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=eliminar&codigoCarrera=${carreraTecnica.codigoCarrera}">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
