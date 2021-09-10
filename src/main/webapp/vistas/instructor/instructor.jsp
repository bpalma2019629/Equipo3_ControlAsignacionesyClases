<%-- 
    Author     : Omar Chocojay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/d30c7c2674.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../../assets/css/bootstrap.css">
        <link rel="stylesheet" href="../../assets/css/style.css">
        <title>Listado Instructores</title>
    </head>
    
    <body>
        
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <div id="main-header" class ="py-2 bg-dark text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            Control Instructores
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <main>
         <section id = "instructores">
            <div class="container mt-5 mb-5 pb-5">
                <div class="row">
                    <div class="col-12 col-md-3">
                        <div class="btn btn-success card text-center bg-success text-white mb-3">
                            <div class="card-body btn btn-success">
                                <i class="fas fa-plus"></i> Agregar
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4><i class="fas fa-chalkboard-teacher"></i>        Instructores</h4>
                            </div>
                        </div>
                        <table class="table table-dark table-hover"">
                            <thead class="table-dark table-hover">
                                <tr>
                                    <th>ID</th>
                                    <th>Apellidos</th>
                                    <th>Nombres</th>
                                    <th>Dirección</th>
                                    <th>Teléfono</th>
                                    <th>    </th>
                                    <th>    </th>
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
                                        <td><a class = "btn btn-warning"  href="#"><i class="far fa-edit"></i>    Editar</a></td>
                                        <td><a class = "btn btn-danger"  href="${pageContext.request.contextPath}/ServletInstructorController?accion=eliminar&instructorId=${instructor.instructorId}" id="deleteBtn" type="button"><i class="fas fa-trash"></i>    Eliminar</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />     
    <script src="../../assets/js/jquery-3.6.0.js"></script>
    <script src="../../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>