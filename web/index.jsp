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
        <title>Bienvenido a Oxxo</title>
    </head>
    <body>
        <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
            <div class="container">
                <div class="card login-card">
                    <div class="row no-gutters">
                        <div class="col-md-5">
                            <img src="assets/img/login.jpg" alt="login" class="login-card-img">
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <div class="brand-wrapper">
                                    <img src="assets/img/Oxxo_Logo.svg" alt="logo" class="logo">
                                </div>
                                <p class="login-card-description">Bienvenido!</p>
                                <p class="login-card-description">Inicia sesión con tu cuenta</p>
                                <form action="Validar" method="POST">
                                    <div class="form-group">
                                        <label class="sr-only">Usuario</label>
                                        <input type="text" name="txtuser" class="form-control" placeholder="Usuario">
                                    </div>
                                    <div class="form-group mb-4">
                                        <label class="sr-only">Contraseña</label>
                                        <input type="password" name="txtpass" class="form-control" placeholder="***********">
                                    </div>
                                    <input type="submit" name="accion" value="Ingresar" class="btn btn-block login-btn mb-4">
                                </form>
                                <a href="#!" class="forgot-password-link">Olvidaste tu contraseña?</a>
                                <nav class="login-card-footer-nav">
                                    <a href="#!">Términos de uso</a>
                                    <a href="#!">Política de privacidad</a>
                                </nav>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
