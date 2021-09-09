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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/d30c7c2674.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="../assets/css/bootstrap.css">
        <link rel="stylesheet" href="../assets/css/style.css">
        <title>Listado Alumnos</title>
    </head>
    <body>
        <h1>Listado Alumnos</h1>
        
         <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <div id="main-header" class="py-2 bg-light text-dark mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            <i class="fas fa-users-cog"></i>Control De Alumnos
                        </h1>

                    </div>
                </div>
            </div>
        </div>


        <main>

            <!-- Boton Agregar -->
            <section id="accions" class="py-4 mb-4">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-3">
                            <a href="#" class=" btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#agregarmodal">
                                <i class="fas fa-plus"></i>
                                Agregar Alumno
                            </a>
                        </div>                        
                    </div>
                </div>                
            </section>

            <!-- Modal -->
            <div class="modal fade" id="agregarmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header bg-primary text-white">
                            <h5 class="modal-title" id="exampleModalLabel">Agregar Alumno </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form method="POST" action="${pageContext.request.contextPath}/ServletAlumnoController" class="was-validated">                
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="nombres">Nombres:</label>
                                    <input type="text" class="form-control" name="nombre" id="nombre">
                                </div>
                                <div class="form-group">
                                    <label for="apellidos">Apellidos:</label>
                                    <input type="text" class="form-control" name="apellido" id="apellido">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" class="form-control" name="email" id="email">
                                </div>
                              
                              
                                <input type="hidden" name="accion" value="insertar">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-dark"  > Guardar </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <section id="carne">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-9">
                            <div class="hard">
                                <div class="card-header">
                                    <h4>Listado Alumno</h4>
                                </div>
                            </div>
                            <table class="table table-striped table-bordered text-center">
                                <thead class ="table-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Nombres</th>
                                        <th>apellidos</th>
                                        <th>email</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody id="texto">
                                    <c:forEach var="estudiante" items="${listadoAlumno}">
                                        <tr id="titulos">
                                            <td>${alumno.carne}</td>
                                            <td>${alumno.nombres} ${estudiante.apellido}</td>
                                            <td>${estudiante.apellidos}</td>
                                            <td>${estudiante.email}</td>

                                            <!-- editar -->
                                           

                                            <!-- eliminar -->
                                            <td> 
                                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/ServletEstudianteController?accion=eliminar&carne=${alumno.carne}">
                                                    <i class="far fa-trash-alt"></i>Eliminar
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                      

                    </div>
                </div>

            </section>

        </main>
        <jsp:include page="../WEB-INF/paginas/comunes/footer.jsp" />
        <script src="../assets/js/jquery-3.6.0.js"></script>
        <script src="../assets/js/bootstrap.bundle.js"></script> 
        
    </body>
</html>
