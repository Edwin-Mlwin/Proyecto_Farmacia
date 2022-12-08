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
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>

        <title>COMPRAS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="compras" />
        </jsp:include>
        <body background="img/farmacia1.jpg">
        <div class="container">
            <BR><center>
             <FONT FACE="impact" SIZE=8 COLOR="#E61D3E">COMPRAS</FONT>
            </center>

            <br>
            <form action="CompraControlador" method="post">
                <input type="hidden" name="id_compras" value="${compra.id_compras}" >
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Usuario</FONT>
                    <select name="id_usuario"  style="width: 500px;" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_usuarios}">
                            <option value="${item.id_usuario}" 
                                    <c:if test="${compra.id_usuario == item.id_usuario}">
                                        selected
                                    </c:if>
                                    >${item.usuario}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Descripcion</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="descripcion" value="${compra.descripcion}" placeholder="Escriba su Descripcion">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Fecha</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="fecha" value="${compra.fecha}" placeholder="Escriba la Fecha">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Cantidad</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="cantidad" value="${compra.cantidad}" placeholder="Cantidad">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Precio</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="precio" value="${compra.precio}" placeholder="Precio">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Total</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="total" value="${compra.total}" placeholder="Total">
                </div>

                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>    

        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
