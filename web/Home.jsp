<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/login.css">
        <script src="https://kit.fontawesome.com/84b9b0e690.js" crossorigin="anonymous"></script>
        <title>Inicio</title>
    </head>
    <body>
        <div style="padding: 15px">
            <h1 class="display-5">Bienvenido <i class="fas fa-laptop-house"></i></h1>
            <p class="lead">Aquí puedes realizar tus labores con confianza.</p>
            <!-- Button que levanta el modal -->
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#staticBackdrop">
                Más Información
            </button>
            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="staticBackdropLabel">Guía de usuario</h3>
                        </div>
                        <div class="modal-body">
                            <div class="card-group">
                                <div class="card mb-3" style="max-width: 1140px;">
                                    <div class="row no-gutters">
                                        <div class="col-md-8">
                                            <img src="assets/img/Home.png" width="750"/> 
                                        </div>
                                        <div class="col-md-4">
                                            <div class="card-body">
                                                <ul class="list-group list-group-flush">
                                                    <li class="list-group-item">
                                                        <span class="badge badge-pill badge-danger">1</span> Barra de navegación entre módulos.
                                                    </li>
                                                    <li class="list-group-item">
                                                        <span class="badge badge-pill badge-danger">2</span> Usuario activo o en sesión.
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Entendido!</button>
                        </div>
                    </div>
                </div>
            </div>
            <hr class="my-3">
            <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-interval="10000">
                        <img src="assets/img/linea_01.jpg" class="d-block w-100" alt="..." width="900">
                    </div>
                    <div class="carousel-item" data-interval="2000">
                        <img src="assets/img/linea_02.jpg" class="d-block w-100" alt="..." width="900">
                    </div>
                    <div class="carousel-item">
                        <img src="assets/img/linea_03.jpg" class="d-block w-100" alt="..." width="900">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <hr class="my-3"> 
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
