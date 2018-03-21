<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"  crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"  crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>

    <title>Listado Películas</title>
    <style>
        .navbar-inverse .navbar-brand, .navbar-inverse .navbar-nav > li > a {
            text-shadow: none;
        }
        .panel {
            margin: 0;
        }
        th, tbody {
            text-align: center;
        }
        #autor {
                color: black;
                padding: 15px;
                position: relative;
                left: 400px;
        }
        body {
                background-color: antiquewhite;
        
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
    <div class="container" style="padding: 5%;">
        <br><br>			
        <div class="panel panel-info">
        <div class="panel-heading text-center" style="background-image: linear-gradient(to bottom,#f08080 0,#f0d1ae 100%);">
            <h2 style="color: firebrick;">P E L I C U L A S</h2>
        </div>
        <table class="table table-striped">
            <tr>
                <th>Nº Película</th>
                <th>Título</th>
                <th>Género</th>
                <th>Descripción</th>
                <th>Dueño</th>
                <th/>
                <th/>
            </tr>
            <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:8889/CLUBPELIS?zeroDateTimeBehavior=convertToNull", "root", "root");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery ("SELECT pelicula.codpel, pelicula.titpel, pelicula.genpel, pelicula.despel, socio.nomsoc from pelicula JOIN socio ON pelicula.ProPel = socio.CodSoc order by codPel");
                   
                    while (listado.next()) {
            %>
                <tr>
                      <td><%= listado.getString("CodPel") %></td>
                      <td><%= listado.getString("TitPel") %></td>
                      <td><%= listado.getString("GenPel") %></td>
                      <td><%= listado.getString("DesPel") %></td>
                      <td><%= listado.getString("NomSoc") %></td>
                      <td><form method="post" action="modificaPeli.jsp" class="navbar-form navbar-left">
                      <input type="hidden" name="codigo" value="<%=listado.getString("CodPel") %>"/>
                      <input type="submit" value="Modificar" class="btn btn-success btn-sm"/>
                      </form></td>
                      <td><form method="post" action="borradoPeli.jsp" class="navbar-form navbar-left">
                      <input type="hidden" name="codigo" value="<%=listado.getString("CodPel") %>"/>
                      <input type="submit" value="Borrar" class="btn btn-danger btn-sm"/>
                      </form></td>
        
        <%
                } // while
                conexion.close();
        %>
    </table>
  </body>
</html>
