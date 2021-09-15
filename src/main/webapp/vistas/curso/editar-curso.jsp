<%-- 
    Document   : editar-curso
    Created on : 14/09/2021, 11:00:50 AM
    Author     : Juan Diego Solís Martínez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setLocale value="es_GT"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/d30c7c2674.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="././assets/css/bootstrap.css">
        <link rel="stylesheet" href="././assets/css/style.css">
        <title>Editar Cursos</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <div id="main-header" class ="py-2 bg-dark text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1>
                            Editar Cursos
                        </h1>
                    </div>
                </div>
            </div>
        </div>

        <form method="POST" action="${pageContext.request.contextPath}/ServletCursoController" class ="container py-4 pb-4 was-validated">
            <div class="modal-body">
                <div class="mb-3">
                    <label for="ciclo" class="form-label text-white">Ciclo</label>
                    <input type="number" class="form-control" name="ciclo" id="ciclo" min="2021" step="1" required value="${curso.ciclo}">
                </div>
                <div class="mb-3">
                    <label for="cupoMaximo" class="form-label text-white">Cupo Máximo</label>
                    <input type="number" class="form-control" name="cupoMaximo" id="cupoMaximo" min="0" required value="${curso.cupoMaximo}">
                </div>
                <div class="mb-3">
                    <label for="cupoMinimo" class="form-label text-white">Cupo Mínimo</label>
                    <input type="number" class="form-control" name="cupoMinimo" id="cupoMinimo" min="0" required value="${curso.cupoMinimo}">
                </div>
                <div class="mb-3">
                    <label for="descripcion" class="form-label text-white">Descripción</label>
                    <input type="text" class="form-control" name="descripcion" id="descripcion" required value="${curso.descripcion}">
                </div>
                <div class="form-group">
                    <label for="carreraTecnica" class="form-label text-white">Código Carrera</label>
                    <select class="form-control" name="codigoCarrera" id="codigoCarrera">
                        <c:forEach var="carreraTecnica" items="${listadoCarreraTecnica}">
                            <tr>
                            <option>${carreraTecnica.codigoCarrera}</option>
                            </tr>
                        </c:forEach>
                            <option selected>${curso.codigoCarrera}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="horarioId" class="form-label text-white">Horario Id</label>
                    <select class="form-control" name="horarioId" id="horarioId">
                        <c:forEach var="horario" items="${listadoHorario}">
                            <tr>
                            <option >${horario.idHorario}</option>
                            </tr>
                        </c:forEach>
                            <option selected>${curso.horarioId}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="instructorId" class="form-label text-white">Instructor Id</label>
                    <select class="form-control" name="instructorId" id="instructorId">
                        <c:forEach var="instructor" items="${listadoInstructor}">
                            <tr>
                            <option>${instructor.instructorId}</option>
                            </tr>
                        </c:forEach>
                            <option selected>${curso.instructorId}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="salonId" class="form-label text-white">Salón Id</label>
                    <select class="form-control" name="salonId" id="salonId">
                        <c:forEach var="salon" items ="${listadoSalones}">
                            <tr>
                            <option>${salon.salonId}</option>
                            </tr>
                        </c:forEach>
                            <option selected>${curso.salonId}</option>
                    </select>
                </div>
                <input type="hidden" name="cursoId" value="${curso.cursoId}">
                <input type="hidden" name="accion" value="actualizar">
            </div>
            <div class="modal-footer">
                
                <button class="btn btn-secondary" href="${pageContext.request.contextPath}/ServletCursoController?accion=listar" class="btn btn-secondary"> Cancelar</button>
                <button type="submit" class="btn btn-success">Guardar</button>
            </div>
        </form>
        <div><br><br><br></div>

        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />
        <script src="././assets/js/jquery-3.6.0.js"></script>
        <script src="././assets/js/bootstrap.bundle.js"></script>
    </body>
</html>
