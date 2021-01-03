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
        <style>
            @media print{
                .parte01, .btn, .accion{
                    display: none;
                }
                .parte02{
                    display: none;
                }
            }
        </style>
    </head>
    <body>
        <div style="padding: 15px">
            <div class="parte01">
            <h1 class="display-5">Módulo de ventas <i class="fas fa-hand-holding-usd"></i></h1>
            <p class="lead">Aquí puedes realizar las ventas del día</p>
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
            </div>
            <div class="collapse">
                <img class="parte03" src="assets/img/finish.jpg" alt="" width="300"/>
            </div>
            <div class="d-flex">
                <div class="col-sm-4 parte02">
                    <div class="card">
                        <form action="Controlador?menu=NuevaVenta" method="POST">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Datos del cliente</label>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input type="text"  name="codigocliente" value="${c.getDni()}" class="form-control" placeholder="Codigo">
                                        &nbsp;<button type="submit" name="accion" value="BuscarCliente" class="btn btn-info"><i class="fas fa-search"></i></button>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" value="${c.getNom()}" name="nombrescliente" class="form-control" placeholder="Datos del cliente" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Datos del producto</label>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input type="text"  name="codigoproducto" value="${producto.getId()}" class="form-control" placeholder="Codigo">
                                        &nbsp;<button type="submit" name="accion" value="BuscarProducto" class="btn btn-info"><i class="fas fa-search"></i></button>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text"  name="nombreproducto" value="${producto.getNom()}" class="form-control" placeholder="Datos del producto" readonly>
                                    </div>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input type="text"  name="precio" value="${producto.getPrecio()}" class="form-control" placeholder="S/. 0.00" readonly>
                                    </div>
                                    <div class="col-sm-3">
                                        <input type="number" value="1" name="cant" class="form-control">
                                    </div>
                                    <div class="col-sm-3">
                                        <input type="text" value="${producto.getStock()}" name="stock" class="form-control" readonly>
                                    </div>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <button type="submit" name="accion" value="Agregar" class="btn btn-info"><i class="fas fa-cart-plus"></i> Agregar a la lista</button>
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
                                <input type="text"  value="${nserie}" name="NroSerie" class="form-control">
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
                                        <th class="accion">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody class="text-center">
                                    <c:forEach var="list" items="${lista}">
                                        <tr>
                                            <td>${list.getItem()}</td>
                                            <td>${list.getIdproducto()}</td>
                                            <td>${list.getDescripcionp()}</td>
                                            <td>${list.getPrecio()}</td>
                                            <td>${list.getCantidad()}</td>
                                            <td>${list.getSubtotal()}</td>
                                            <td>
                                                <a class="btn btn-danger" href="Controlador?menu=Producto&accion=Eliminar&id=${list.getItem()}"><i class="fas fa-cart-arrow-down"></i> Eliminar Item</a>                                             
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer d-flex">
                            <div class="col-sm-6">
                                <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta" onclick="print()" class="btn btn-success"><i class="fas fa-cash-register"></i> Generar venta</a>
                                <a href="Controlador?menu=NuevaVenta&accion=GenerarVenta&accion=Cancelar" type="submit" name="accion" value="Cancelar" class="btn btn-danger"><i class="fas fa-trash-alt"></i> Vaciar lista</a>
                            </div>
                            <div class="col-sm-6 ml-auto d-flex">
                                <label><h3>Total: </h3></label>
                                &nbsp;<input type="text" name="txtTotal" value="S/. ${totalpagar}0" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
