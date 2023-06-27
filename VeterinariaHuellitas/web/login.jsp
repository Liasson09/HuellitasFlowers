<%@page import="modelo.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sessionOk=request.getSession();
    boolean accedio = false;
    Usuarios usuario = (Usuarios)sessionOk.getAttribute("usuario");
     if (sessionOk.getAttribute("usuario")!=null) {
        if (usuario.getContraseña()!=null) { accedio = true; }
     }
        
    if (accedio==false) {
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veterinaria Huellitas Flowers - Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/login.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    </head>
    <body>
        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg" style="border-radius: 2rem;">
                            <div class="card-body p-5 text-center">
                                <a class="navbar-brand" href="index.jsp"><img src="imagenes/logo.png"></a>
                                <form action="ServletLogin" class="form" th:action="@{/login}" method="post">
                                    <div class="mb-md-5 mt-md-4 pb-5">
                                        <h2 class="fw-bold mb-2 text-uppercase">Inicia Sesión</h2>
                                        <div class="form-group">
                                            <label for="username" class="text">Correo:</label><br>
                                            <input type="text" name="txtCorreo" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="text">Contraseña:</label><br>
                                            <input type="password" name="txtPass" class="form-control" required>
                                        </div>
                                        <p class="small mb-5 pb-lg-2">¿Olvidaste tu contraseña? Ingresa <a class="text-50" href="#!">aquí</a></p>

                                        <button class="btn btn-primary btn-lg px-5" type="submit">Ingresa</button>
                                        <input type="hidden" name="op" value="login">
                                    </div>
                                    <div>
                                        <p class="mb-0">¿No tienes una cuenta? <a href="registro.jsp" class="text-50 fw-bold">Regístrate</a>
                                        </p>
                                    </div>

                                    <h6>
                                        <%
                                            if (request.getAttribute("msg") != null) {
                                                String msg = request.getAttribute("msg").toString();
                                        %>
                                        <div class="alert alert-danger" role="alert">
                                            <%=msg%>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </h6>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    </body>
</html>
<%
    }else {  
%>

<jsp:forward page="index.jsp">
    <jsp:param name="msg2" value="Usted ya se encuentra logueado"/>
</jsp:forward>

<%
    }  
%>
