<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDateTime"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="modelo.Usuarios"%>

<%
    String nombre = "";
    boolean accedio = false;
    Usuarios usuario = null;

    HttpSession sessionOk = request.getSession();
    if (sessionOk.getAttribute("usuario") != null) {

        usuario = (Usuarios) sessionOk.getAttribute("usuario");
        if (usuario.getContraseña() != null) {
            accedio = true;
        }

    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veterinaria Huellitas Flowers - inicio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/index.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    </head>
    <body>
        <header class="">
            <div class="menu container-fluid">
                <nav class="navbar navbar-expand-lg navbar-light bg">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="index.jsp"><img src="imagenes/logo.png"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#"><b>INICIO</b></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">NOSOTROS</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">SERVICIOS</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">RESERVAR</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">CONTACTO</a> 
                                </li>
                            </ul>
                            <div class="login d-flex" style="padding-bottom: 15px">
                                <% if (accedio == false) {   %>
                                <a class="btn btn-primary" href="login.jsp">INGRESAR</a>
                                <%  } else { %>                         
                                <a class="btn btn-primary" href="ServletLogin?op=cerrar">CERRAR SESIÓN</a>
                                <%}%>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>  
        </header>
        <section>
            <div class="container-fluid">
                <div id="demo" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="imagenes/inicio.png" class="d-block" style="width:100%">
                            <div class="carousel-caption">
                                <h3>PROTEGIENDO A TUS MASCOTAS</h3>
                                <p>Huellitas Flowers cuida la salud de tu mascotas brindándote el mejor servicio.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="imagenes/inicio.png" alt="Chicago" class="d-block" style="width:100%">
                            <div class="carousel-caption">
                                <h3>PROTEGIENDO A TUS MASCOTAS</h3>
                                <p>Huellitas Flowers cuida la salud de tu mascotas brindándote el mejor servicio.</p>
                            </div> 
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </button>
                </div>
            </div>
        </section>
    </body>
</html>
