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
        <title>Clientes</title>
    </head>
    <body>
        <h1 class="display-4">Módulo de clientes <i class="fas fa-users"></i></h1>
        <p class="lead">Aquí puedes realizar el mantenimiento completo de los clientes más frecuentes</p>
        <hr class="my-4">
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Empleado" method="POST">
                    <div class="form-group">
                        <label>DNI</label>
                        <input type="text" value="${cliente.getDni()}" name="txtDni" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Nombre del cliente</label>
                        <input type="text" value="${cliente.getNombres()}" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Dirección</label>
                        <input type="text" value="${cliente.getDireccion()}" name="txtTelefono" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" value="${cliente.getEstado()}" name="txtEstado" class="form-control">
                    </div>
                    <button type="submit" name="accion" value="Agregar" class="btn btn-info"><i class="fas fa-save"></i> Agregar</button>
                    <button type="submit" name="accion" value="Actualizar" class="btn btn-success"><i class="fas fa-sync-alt"></i> Actualizar</button>
                </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>DNI</th>
                            <th>NOMBRE</th>
                            <th>DIRECCION</th>
                            <th>ESTADO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <c:forEach var="em" items="${empleados}">
                            <tr>
                                <td>${cl.getId()}</td>
                                <td>${cl.getNombres()}</td>
                                <td>${cl.getPrecio()}</td>
                                <td>${cl.getStock()}</td>
                                <td>${cl.getEstado()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${cl.getId()}"><i class="fas fa-edit"></i>  Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Eliminar&id=${cl.getId()}"><i class="fas fa-trash-alt"></i> Eliminar</a>
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
