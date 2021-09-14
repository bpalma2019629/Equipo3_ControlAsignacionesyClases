<%-- 
    Document   : editar-alumnos
    Created on : 13/09/2021, 06:19:24 PM
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
        <link rel="stylesheet" href="../../assets/css/bootstrap.css">
        <link rel="stylesheet" href="../../assets/css/style.css">

        <title>Editar Alumnos</title>
    </head>
    <body>
        <!-- Cabecera -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />

        <form method="POST" action="${pageContext.request.contextPath}/ServletAlumnoController" class="was-validated">                


            <div class="mb-3">
                <label for="nombres" class="form-label">Nombres:</label>
                <input type="text" class="form-control" name="nombres" id="nombres" required  value="${alumno.nombres}">
            </div>
            <div class="mb-3">
                <label for="apellidos" class="form-label">Apellidos:</label>
                <input type="text" class="form-control" name="apellidos" id="apellidos" required  value="${alumno.apellidos}">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" name="email" id="email" required  value="${alumno.email}">
            </div>

            <input type="hidden" name="accion" value="insertar">


            <input type="hidden" name="idEstudiante" value="${estudiante.idEstudiante}">
            <input type="hidden" name="accion" value="actualizar">


            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-dark"  > Guardar </button>
        </form>


        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />
        <script src="../../assets/js/jquery-3.6.0.js"></script>
        <script src="../../assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
