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
        <title>Registro de Ventas</title>
    </head>
    <body>
        <h1 class="display-4">Módulo de ventas <i class="fas fa-hand-holding-usd"></i></h1>
        <p class="lead">Aquí puedes realizar las ventas del día</p>
        <hr class="my-4">
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <form action="Controlador" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label>Datos del cliente</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text"  name="codigocliente" class="form-control" placeholder="Codigo">
                                &nbsp;<button type="submit" name="accion" value="Buscar" class="btn btn-info"><i class="fas fa-search"></i></button>
                            </div>
                            <div class="col-sm-6">
                                <input type="text"  name="nombrescliente" class="form-control" placeholder="Datos del cliente">
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Datos del producto</label>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text"  name="codigoproducto" class="form-control" placeholder="Codigo">
                                &nbsp;<button type="submit" name="accion" value="Buscar" class="btn btn-info"><i class="fas fa-search"></i></button>
                            </div>
                            <div class="col-sm-6">
                                <input type="text"  name="nombreproducto" class="form-control" placeholder="Datos del producto">
                            </div>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                                <input type="text"  name="precio" class="form-control" placeholder="S/. 0.00">
                            </div>
                            <div class="col-sm-3">
                                <input type="number"  name="cant" class="form-control">
                            </div>
                            <div class="col-sm-3">
                                <input type="text"  name="stock" class="form-control">
                            </div>
                        </div>
                        <div class="form-group d-flex">
                            <div class="col-sm-6 d-flex">
                            <button type="submit" name="accion" value="Agregar" class="btn btn-info"><i class="fas fa-check-circle"></i> Agregar al carrito</button>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-6 ml-auto">
                            <label>Número de serie: </label>
                            <input type="text"  name="NroSerie" class="form-control">
                        </div>
                        <table class="table table-hover">
                            <thead class="table-dark text-center">
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>SubTotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody class="text-center">
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer">
                        <button type="submit" name="accion" value="Generar venta" class="btn btn-success"><i class="fas fa-money-check-alt"></i> Generar venta</button>
                        <button type="submit" name="accion" value="Cancelar" class="btn btn-danger"><i class="fas fa-ban"></i> Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
        
        
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
