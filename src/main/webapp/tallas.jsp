<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>TALLAS</title>
    </head>
    <body class="box">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="tallas" />
        </jsp:include>
        <br><br>
        <div class="container">

            <center>
                <div class="loader">
                    <h1>
                        <span>TALLAS</span>
                        <span>TALLAS</span>
                    </h1>

                </div>
            </center>
            <br>
            <br>
            <a  class="btn btn-primary btn-sm" href="TallaControlador?action=add"><i class="fa-solid fa-circle-plus"></i> Nuevo </a>
            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th>
                    <th>Medida</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${tallas}">
                    <tr>
                        <td>${item.id_talla}</td>
                        <td>${item.medida}</td>
                        <td><a href="TallaControlador?action=edit&id_talla=${item.id_talla}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="TallaControlador?action=delete&id_talla=${item.id_talla}" onclick="return(confirm('Esta seguro ???'))"><i class="fa-solid fa-trash"></i></a></td>
                    </tr>
                </c:forEach>

            </table>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
