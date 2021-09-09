<%-- 
    Document   : index
    Created on : 25/08/2021, 09:27:32 AM
    Author     : Brandon Andree Palma Hernandez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/d30c7c2674.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./assets/css/bootstrap.css">
        <link rel="stylesheet" href="./assets/css/style.css">
        <title>Página Principal</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecera.jsp" />
        <main>
            <div class="container">
                <div class="container">
                    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active" data-bs-interval="7000">
                                <img src="assets/img/tecnicas.jpg" class="d-block w-100" alt="Carreras Tecnicas">
                            </div>
                            <div class="carousel-item" data-bs-interval="7000">
                                <img src="assets/img/salon computo.jpg" class="d-block w-100" alt="Salones" >
                            </div>
                            <div class="carousel-item" data-bs-interval="7000">
                                <img src="assets/img/profesor.jpg" class="d-block w-100" alt="Intructores">
                            </div>
                            <div class="carousel-item" data-bs-interval="7000">
                                <img src="assets/img/electro.jpg" class="d-block w-100" alt="Intructores">
                            </div>
                            <div class="carousel-item" data-bs-interval="7000">
                                <img src="assets/img/horario.jpg" class="d-block w-100" alt="Intructores">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    </section>
                </div>   
            </div>
        </main>
    <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp" />
    <script src="./assets/js/jquery-3.6.0.js"></script>
    <script src="./assets/js/bootstrap.bundle.js"></script>
</body>
</html>
