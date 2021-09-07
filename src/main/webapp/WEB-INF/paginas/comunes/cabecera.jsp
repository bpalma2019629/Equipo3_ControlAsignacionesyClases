<header id="equipo3-header">
    <h1> Control de Asignaciones y Clases </h1>
</header>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Menú</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
                <a class="nav-link"  href="${pageContext.request.contextPath}/ServletAlumnoController?accion=listar">Listar Alumno</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/ServletSalonController?accion=listar">Listar Salones</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/ServletHorarioController?accion=listar">Listar Horarios</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/ServletCarreraTecnicaController?accion=listar">Listar Carreras Tecnicas</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/ServletInstructorController?accion=listar">Listar Instructores</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/ServletCursoController?accion=listar">Listar Cursos</a>
                <a class="nav-link" href="${pageContext.request.contextPath}/ServletAsignacionAlumnoController?accion=listar">Listar Asignaciones</a>
            </div>
        </div>
    </div>
</nav>
