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
        <title>Productos</title>
    </head>
    <body>
        <h1 class="display-4">Módulo de productos <i class="fas fa-box-open"></i></h1>
        <p class="lead">Aquí puedes realizar el mantenimiento completo de tu stock de productos</p>
        <hr class="my-4">
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Empleado" method="POST">
                    <div class="form-group">
                        <label>Nombre del producto</label>
                        <input type="text" value="${producto.getNombres()}" name="txtDni" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Precio</label>
                        <input type="text" value="${producto.getPrecio()}" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Stock</label>
                        <input type="text" value="${producto.getStock()}" name="txtTelefono" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" value="${producto.getEstado()}" name="txtEstado" class="form-control">
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
                            <th>NOMBRE</th>
                            <th>PRECIO</th>
                            <th>STOCK</th>
                            <th>ESTADO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">>
                        <c:forEach var="em" items="${empleados}">
                            <tr>
                                <td>${pr.getId()}</td>
                                <td>${pr.getNombres()}</td>
                                <td>${pr.getPrecio()}</td>
                                <td>${pr.getStock()}</td>
                                <td>${pr.getEstado()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${pr.getId()}"><i class="fas fa-edit"></i> Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&id=${pr.getId()}"><i class="fas fa-trash-alt"></i> Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
