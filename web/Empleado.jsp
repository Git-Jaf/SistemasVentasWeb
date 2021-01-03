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
        <title>Colaboradores</title>
    </head>
    <body>
        <div style="padding: 15px">
            <h1 class="display-5">Módulo de colaboradores <i class="fas fa-user"></i></h1>
            <p class="lead">Aquí puedes realizar el mantenimiento completo de colaboradores.</p>
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
                                            <img src="assets/img/Colab.png" width="750"/> 
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
                                                    <li class="list-group-item">
                                                        <span class="badge badge-pill badge-danger">3</span> Casillas para ingresar o actualizar colaboradores.
                                                    </li>
                                                    <li class="list-group-item">
                                                        <span class="badge badge-pill badge-danger">4</span> Botones "Agregar" y "Actualizar" para insertar nuevos colaboradores y actualizar los datos de los ya existentes.
                                                    </li>
                                                    <li class="list-group-item">
                                                        <span class="badge badge-pill badge-danger">5</span> Vista de la tabla de colaboradores.
                                                    </li>
                                                    <li class="list-group-item">
                                                        <span class="badge badge-pill badge-danger">6</span> Botones "Editar" y "Eliminar" para actualizar datos y dar de baja a los colaboradores.
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
            <div class="d-flex">
                <div class="card col-sm-4">
                    <div class="card-body">
                        <form action="Controlador?menu=Empleado" method="POST">
                            <div class="form-group">
                                <label>DNI</label>
                                <input type="text" value="${empleado.getDni()}" name="txtDni" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nombres</label>
                                <input type="text" value="${empleado.getNom()}" name="txtNombres" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="text" value="${empleado.getTel()}" name="txtTelefono" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Estado</label>
                                <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Usuario</label>
                                <input type="text" value="${empleado.getUser()}" name="txtUsuario" class="form-control">
                            </div>
                            <button type="submit" name="accion" value="Agregar" class="btn btn-info"><i class="fas fa-save"></i> Agregar</button>
                            <button type="submit" name="accion" value="Actualizar" class="btn btn-success"><i class="fas fa-sync-alt"></i> Actualizar</button>
                        </form>
                    </div>
                </div>
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead class="table-dark text-center">
                            <tr>
                                <th>ID</th>
                                <th>DNI</th>
                                <th>NOMBRES</th>
                                <th>TELEFONO</th>
                                <th>ESTADO</th>
                                <th>USUARIO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody class="text-center">
                            <c:forEach var="em" items="${empleados}">
                                <tr>
                                    <td>${em.getId()}</td>
                                    <td>${em.getDni()}</td>
                                    <td>${em.getNom()}</td>
                                    <td>${em.getTel()}</td>
                                    <td>${em.getEstado()}</td>
                                    <td>${em.getUser()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}"><i class="fas fa-edit"></i> Editar</a>
                                        <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&id=${em.getId()}"><i class="fas fa-trash-alt"></i> Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
