<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veterinaria Huellitas Flowers - Registro</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="css/registro.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    </head>
    <body>
        <section class="vh-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-7 px-0 d-none d-sm-block">
                        <img src="imagenes/registroUsu.png" alt="Login image" class="w-100 vh-100">
                    </div>
                    <div class="col-lg-5 text-black">
                        <br>
                        <div class="ms-xl-4 text-center">
                            <a class="navbar-brand" href="index.jsp"><img src="imagenes/logo.png" width="150px"></a>
                        </div>
                        <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 pt-5 pt-xl-0 mt-xl-n5">
                            <form style="width: 25rem;" action="ServletRegistro">
                                <h3 class="fw-normal mb-2 pb-2 text-center">Crea una cuenta nueva</h3>
                                <div class="form-group mb-3">
                                    <input type="text" name="txtnombre" class="form-control" placeholder="Nombre:" required>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="txtDNI" class="form-control" placeholder="DNI:" required>
                                </div>
                                <div class="form-group mb-3">
                                    <select class="form-select" name="txtGenero" id="Genero" required>
                                        <option selected disabled value="">Género</option>
                                        <option id="opc01">Mujer</option>
                                        <option id="opc02">Hombre</option>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="date" name="txtFecha" class="form-control" placeholder="Fecha de Nacimiento:" required>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="txtDireccion" id="direccion" class="form-control" placeholder="Dirección:" required>
                                </div> 
                                <div class="form-group mb-3">
                                    <input type="text" name="txtTel" id="telefono" class="form-control" placeholder="Teléfono:" required>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="txtCorreo" id="username" class="form-control" placeholder="Correo:" required>
                                </div>
                                <div class="form-group mb-3">
                                    <input type="password" name="txtPass" id="password" class="form-control" placeholder="Crea una contraseña" required>
                                </div>
                                <div class="pt-1 mb-4 d-grid gap-2">
                                    <button type="submit" class="btn btn-primary btn-lg" >Registrar</button>
                                    <input type="hidden" name="opcion" value="registroUsuario">  
                                </div>
                                <p>¿Ya te encuentras registrado? Ingresa <a href="login.jsp" class="link-info">aquí</a></p>
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
        </section>
    </body>
</html>
