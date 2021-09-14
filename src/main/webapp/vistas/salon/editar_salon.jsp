<%-- 
    Document   : editar_salon
    Created on : 13/09/2021, 07:22:20 PM
    Author     : Kenneth Gerardo García Lemus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<fmt:setLocale value="es_GT"/>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./assets/css/style.css">  
        <link rel="stylesheet" href="./assets/css/bootstrap.css">

        <script src="./assets/js/jquery-3.6.0.js"></script>
        <script src="./assets/js/bootstrap.bundle.js"></script>

        <script src="https://kit.fontawesome.com/dc1d5238ef.js" crossorigin="anonymous"></script>

        <title>Editar salones</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp"/>
        <br>

        <form method="POST" action="${pageContext.request.contextPath}/ServletSalonController" class="was-validated">

            <div class="mb-3">
                <label for="capacidad" class="form-label">Cantidad máxima de alumnos</label>
                <input type="number" class="form-control" name="capacidad" id="capacidad" required value="${salon.capacidad}">
            </div>

            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripcion del salón</label>
                <input type="text" class="form-control" name="descripcion" id="descripcion" required value="${salon.descripcion}">
            </div>

            <div class="mb-3">
                <label for="nombreSalon" class="form-label">Nombre del salón</label>
                <input type="text" class="form-control" name="nombreSalon" id="nombreSalon" required value="${salon.nombreSalon}">
            </div>

            <input type="hidden" name="salonId" value="${salon.salonId}">
            <input type="hidden" name="accion" value="actualizar">

            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </form>

        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp"/>
    </body>

</html>
