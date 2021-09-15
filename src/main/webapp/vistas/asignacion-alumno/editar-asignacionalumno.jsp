<%-- 
    Document   : editar-asignacionalumno
    Created on : 14/09/2021, 03:22:03 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/d30c7c2674.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="././assets/css/bootstrap.css">
        <link rel="stylesheet" href="././assets/css/style.css">
        <title>Editar Asignaciones</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <div id="main-header" class ="py-2 bg-dark text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            Editar Asignaciones
                        </h1>
                    </div>
                </div>
            </div>
        </div>
        <form method="POST" action="${pageContext.request.contextPath}/ServletAsignacionAlumnoController" class ="container py-4 pb-4 was-validated">

            <div class="mb-3">
                <label for="fecha_asignacion" class="form-label">Fecha Asignación</label>
                <input type="datetime-local" class="form-control" id="fecha_asignacion" name="fecha_asignacion" required >
            </div>
            <div class="mb-3">
                <label for="carne" class="form-label">Carné del alumno</label>
                <select class="form-select"   name="carne" id="carne" data-placeholder="- Seleccione un alumno -" required>
                    <option value="${asignacionAlumno.carne}"> ${asignacionAlumno.carne} </option>
                    <c:forEach var="alumno" items="${listadoAlumno}">
                        <option value="${alumno.carne}">${alumno.carne} |${alumno.nombres} ${alumno.apellidos}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="mb-3">
                <label for="curso" class="form-label">Curso</label>
                <select class="form-select" name="cursoId" id="curso" required>
                    <option value="${asignacionAlumno.cursoId}"> ${asignacionAlumno.cursoId} </option>
                    <c:forEach var="curso" items="${listadoCursos}">
                        <option value="${curso.cursoId}">${curso.cursoId} | ${curso.ciclo} | ${curso.cupoMaximo} | ${curso.cupoMinimo} | ${curso.descripcion}</option>
                    </c:forEach>
                </select>
            </div>
            <input type="hidden" name="asignacionId" value="${asignacionAlumno.asignacionId}">
            <input type="hidden" name="accion" value="actualizar">

            <div class="modal-footer">
                <button href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=listar" type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-success">Guardar</button>
            </div>
        </form>
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />
        <script src="././assets/js/jquery-3.6.0.js"></script>
        <script src="././assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
