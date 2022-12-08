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

        <title>EMPLEADOS</title>
    </head>
    <body>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="empleados" />
        </jsp:include>
        <body background="img/farmacia1.jpg">
        <div class="container">
            <br>
            <center>
             <FONT FACE="impact" SIZE=8 COLOR="#E61D3E">NUEVO EMPLEADO</FONT>
            </center>

            <br>
            <form action="EmpleadoControlador" method="post">
                <input type="hidden" name="id_empleados"  value="${empleado.id_empleados}" >
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Usuario</FONT>
                    <select name="id_usuario" style="width: 500px;" class="form-control">
                        <option value="">-- Selecione --</option>
                        <c:forEach var="item" items="${lista_usuarios}">
                            <option value="${item.id_usuario}" 
                                    <c:if test="${empleado.id_usuario == item.id_usuario}">
                                        selected
                                    </c:if>
                                    >${item.usuario}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                   <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">CI</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="ci" value="${empleado.ci}" placeholder="Escriba su CI">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Nombre</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="nombre" value="${empleado.nombre}" placeholder="Escriba su Nombre">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Apellido</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="apellidos" value="${empleado.apellidos}" placeholder="Escriba sus Apellidos">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Direccion</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="direcion" value="${empleado.direccion}" placeholder="Escriba su Direccion">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Numero Dom</FONT>
                    <input type="text" class="form-control"  style="width: 500px;" name="numero" value="${empleado.numero}" placeholder="Escriba su N°">
                </div>
                <div class="mb-3">
                    <FONT FACE="impact" SIZE=3 COLOR="#E61D3E">Telefono</FONT>
                    <input type="text" class="form-control" style="width: 500px;" name="telefono" value="${empleado.telefono}" placeholder="Escriba su Telefono">
                </div>

                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>    

        </div>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </body>
</html>