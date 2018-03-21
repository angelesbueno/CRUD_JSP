<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"  crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    <title>Formulario Préstamos</title>
    <style>
            .navbar-inverse .navbar-brand, .navbar-inverse .navbar-nav > li > a {
                text-shadow: none;
            }
            th, tbody {
            text-align: center;
            }
            input[type=number]::-webkit-outer-spin-button, input[type=number]::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }
            input[type=number] {
                -moz-appearance:textfield;
            }
            #autor {
                color: black;
                padding: 15px;
                position: relative;
                left: 400px;
            }
            body {
                background-color: antiquewhite;
            }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid" style="background-color: lightcoral">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp" style="color: black">P E L I C L U B</a>
            </div>
            <ul class="nav navbar-nav">
              <li><a href="index.jsp" style="color: black">Inicio</a></li>
                  <li><a href="listaSocios.jsp" style="color: black">Socios</a></li>
                  <li><a href="listaPelis.jsp" style="color: black">Películas</a></li>
                  <li><a href="formSocio.jsp" style="color: black">Alta Socio</a></li>
                  <li><a href="formPeli.jsp" style="color: black">Alta Película</a></li>
                  <li><a href="formPrestamo.jsp" style="color: black">Alta Préstamo</a></li>
                  <li id="autor" style="color: black">Crud realizado por: Ángeles Bueno Aguilar</li>
            </ul>
        </div>
    </nav>
    <div id="container" style="padding: 5%">
        <h2 style="margin-bottom: 20px;">Introduzca los datos del nuevo préstamo:</h2>
        <form method="post" action="guardaPrestamo.jsp">
            <div class="form-group">
                <label for="socio">Nº Socio:</label>
                <input type="number" name="socio" autocomplete="off" class="form-control" id="socio" required/><br/>
            </div>
            <div class="form-group">
                <label for="pelicula">Nº Película:</label>
                <input type="number" name="pelicula" autocomplete="off" class="form-control" id="pelicula" required/><br/>
            </div>
            <button type="submit" class="btn btn-info btn-sm">Enviar</button>
        </form>
    </div>
  </body>
</html>