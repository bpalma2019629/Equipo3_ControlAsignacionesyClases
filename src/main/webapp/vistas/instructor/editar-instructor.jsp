<%-- 
    Document   : editar-instructores
    Created on : 13/09/2021, 01:56:53 PM
    Author     : Brandon Andree Palma Hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/d30c7c2674.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="././assets/css/bootstrap.css">
        <link rel="stylesheet" href="././assets/css/style.css">
        <title>Editar Instructores</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <div id="main-header" class ="py-2 bg-dark text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            Editar instructor
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <form method="POST" action="${pageContext.request.contextPath}/ServletInstructorController" class ="container py-4 pb-4 was-validated">
            <div class="mb-3">
                <label for="apellidos" class="form-label text-white"> Apellido</label>
                <br>
                <input type="text" class="form-control" name="apellidos" id="Apellidos" required value="${instructor.apellidos}">
            </div>
            <div class="mb-3" >
                <label for="nombres" class="form-label text-white">  Nombres </label>
                <br>
                <input type="text" class="form-control"  name="nombres" id="nombres" required value="${instructor.nombres}">
            </div>
            
            <div class="mb-3">
                <label for="direccion" class="form-label text-white"> Direccion</label>
                <br>
                <input type="text" class="form-control" name="direccion" id="direccion" required value="${instructor.direccion}">
            </div>
            <div class="mb-3">
                <label for="telefono" class="form-label text-white"> Teléfono </label>
                <br>
                <input type="text" class="form-control" name="telefono" id="telefono" required value="${instructor.telefono}">
            </div>
                <input type="hidden" name="instructorId" value="${instructor.instructorId}">
                <input type="hidden" name="accion" value="actualizar">
            <div class="modal-footer">
                <button href="${pageContext.request.contextPath}/ServletInstructorController?accion=listar" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-success">Guardar</button>
            </div>
        </form>
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />
        <script src="././assets/js/jquery-3.6.0.js"></script>
        <script src="././assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
