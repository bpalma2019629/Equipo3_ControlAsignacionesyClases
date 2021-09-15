<%-- 
    Document   : editar-carrera-tecnica
    Created on : 13/09/2021, 06:40:08 PM
    Author     : Juan Diego Solís Martínez
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
        <title>Editar Carreras Técnicas</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <div id="main-header" class ="py-2 bg-dark text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            Editar Carreras Técnicas
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <form method="POST" action="${pageContext.request.contextPath}/ServletCarreraTecnicaController" class ="container py-4 pb-4 was-validated">
            <div class="mb-3">
                <label for="nombre"  class="form-label text-white"> Nombre</label>
                <input type="text" class="form-control" name="nombre" id="nombre" required value="${carreraTecnica.nombre}">
            </div>
            <input type="hidden" name="codigoCarrera" value="${carreraTecnica.codigoCarrera}">
            <input type="hidden" name="accion" value="actualizar">
            <div class="modal-footer">

                <button class="btn btn-secondary" href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=listar" class="btn btn-secondary"> Cancelar</button>
                <button type="submit" class="btn btn-success">Guardar</button>
            </div>
        </form>
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />
        <script src="././assets/js/jquery-3.6.0.js"></script>
        <script src="././assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
