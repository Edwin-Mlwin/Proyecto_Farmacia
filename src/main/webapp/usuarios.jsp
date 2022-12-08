<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
if (session.getAttribute("login")!="ok"){
    response.sendRedirect("login.jsp");
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>USUARIOS</title>
    </head>
    <body class="box">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="usuarios" />
        </jsp:include>
        <body background="img/tabletas.jpg">
        <br><br>
        <div class="container">

            <center>
                <div class="loader">
                    <h1>
                        <br><br><br>
                        <FONT FACE="impact" SIZE=8 COLOR="#9D19E3">USUARIOS</FONT>
                        
                    </h1>

                </div>
            </center>
            <br>
            <br>
            <a  class="btn btn-primary btn-sm" href="UsuarioControlador?action=add"><i class="fa-solid fa-circle-plus"></i>CREAR USUARIO</a>
            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th>
                    <th>Usuario</th>
                    <th>Password</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${usuarios}">
                    <tr>
                        <td>${item.id_usuario}</td>
                        <td>${item.usuario}</td>
                        <td>${item.password}</td>
                        <td><a href="UsuarioControlador?action=edit&id_usuario=${item.id_usuario}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="UsuarioControlador?action=delete&id_usuario=${item.id_usuario}" onclick="return(confirm('Desea Eliminar'))"><i class="fa-solid fa-trash"></i></a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
