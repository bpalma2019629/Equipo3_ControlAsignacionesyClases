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

        <script src="https://kit.fontawesome.com/dc1d5238ef.js" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="../../assets/css/bootstrap.css">
        <link rel="stylesheet" href="../../assets/css/style.css">


        <script src="../../assets/js/jquery-3.6.0.js"></script>
        <script src="../../assets/js/bootstrap.bundle.js"></script>
        <title>Salones</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <div id="main-header" class ="py-2 bg-dark text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            Control Salones
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <main>
         <section id = "salones">
        <div class="container mt-5 mb-5 pb-5 ">
            <div class="row">
                <div class="col-12 col-md-3">
                    <div class="btn btn-success card text-center bg-success text-white mb-3">
                        <div class="card-body btn btn-success">
                            <i class="fas fa-plus"></i>Agregar
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4><i class="fas fa-chalkboard"></i>    Salones</h4>
                        </div>
                    </div>
                    <table class="table table-dark table-hover">
                        <thead class="table-dark table-hover">
                            <tr>
                                <th>ID</th>
                                <th>Capacidad</th>
                                <th>Descripción</th>
                                <th>Nombre del salón</th>
                                <th> </th>
                                <th> </th>
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
                                        <a class="btn btn-warning"  href="#"><i class="far fa-edit"></i> Editar</a>
                                    </td>
                                    <td>
                                        <a class="btn btn-danger" href="${pageContext.request.contextPath}/ServletSalonController?accion=eliminar&salonId=${salon.salonId}"> <i class="fas fa-trash"></i> Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp"/>
    </body>
</html>
