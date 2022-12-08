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

        <title>VENTAS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="ventas" />
        </jsp:include>
        <body background="img/farmacia1.jpg">
        <div class="container">
            <br>
           <center>
             <FONT FACE="impact" SIZE=8 COLOR="#E61D3E">VENTAS</FONT>
            </center>

            <br>
            <form action="VentaControlador" method="post">
                <input type="hidden" name="id_ventas" value="${venta.id_ventas}" >
                <div class="mb-3">
                   <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Usuario</FONT>
                    <select name="id_usuario"  style="width: 500px;" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_usuarios}">
                            <option value="${item.id_usuario}" 
                                    <c:if test="${venta.id_usuario == item.id_usuario}">
                                        selected
                                    </c:if>
                                    >${item.usuario}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Cliente</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="cliente" value="${venta.cliente}" placeholder="Escriba el Cliente">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Descripcion</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="descripcion" value="${venta.descripcion}" placeholder="Escriba su Descripcion">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Fecha</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="fecha" value="${venta.fecha}" placeholder="Escriba la Fecha">
                </div>

                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>    

        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>
