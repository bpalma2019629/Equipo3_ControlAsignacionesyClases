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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../assets/css/style.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.css">
        <title>Listado Horarios</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <section id = "horario">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 col-md-9">
                        <div class="card">
                            <div class="card-header">
                                <h4>Listado de Horarios</h4>
                            </div>
                        </div>
                        <table class="table table-dark table-hover"">
                            <thead class="table-dark table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>Horario Inicio</th>
                                    <th>Horario Final</th>
                                    <th>    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="horario" items="${listadoHorario}">
                                    <tr>
                                        <td>${horario.idHorario}</td>
                                        <td>${horario.horaInicio}</td>
                                        <td>${horario.horaFinal}</td>
                                        <td><a class = "btn btn-danger"  href="${pageContext.request.contextPath}/ServletHorarioController?accion=eliminar&idHorario=${horario.idHorario}">Eliminar</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-12 col-md-3">
                        <div class="btn btn-success card text-center bg-success text-white mb-3">
                            <div class="card-body">
                                Agregar
                            </div>
                        </div>
                        <div class="btn btn-warning card text-center bg-warning text-white mb-3">
                            <div class="card-body">
                                Modificar
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script src="../assets/js/jquery-3.6.0.js"></script>
    <script src="../assets/js/bootstrap.bundle.js"></script>
</body>
</html>
