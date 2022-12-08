<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String opc = request.getParameter("opcion");

    if (session.getAttribute("login") != "ok") {
        response.sendRedirect("login.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FARMACIA</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        
         <style>
        * {
            box-sizing: border-box;
        }

        .columna {
            float: left;
            width: 33%;
            padding-right: 20px;
        }

        .fila::after {
            content: "";
            clear: both;
            display: table;
        }

        img {
            /* Para que sea responsiva */
            width: 80%;
        }
    </style>
    </head>
    
<body background="img/index.jpg">
    

    <body  class="box">
        

        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="index" />
        </jsp:include>
        
    <center>
        <div class="loader">
            <h1>
                <FONT FACE="impact" SIZE=8 COLOR="#1C1A1A">BIENVENIDO AL SISTEMA</FONT>

            </h1>
           
        </div>
    </center>

    <body>
    <center>
        
        <div class="fila">
            <div class="columna">
            <img src="img/usuario.jpg" alt=""/>
             
            
            <h2 class="title"><a href="UsuarioControlador">USUARIOS</a></h2>
        </div>
        
        <div class="columna">
            <img src="img/producto.jpeg" alt=""/>
            <h2 class="title"><a href="Producto_tallaControlador?action=view">PRODUCTOS</a></h2>
        </div>
        <div class="columna">
            <img src="img/emple.jpg" alt=""/>
            <h2 class="title"><a href="EmpleadoControlador?action=view">EMPLEADOS</a></h2>
        </div>
        </div>
        
    </center>
    
    <center>
        
        <div class="fila">
        <div class="columna">
            <img src="img/venta.jpg" alt=""/>
            <h2 class="title"><a href="VentaControlador">VENTA</a></h2>
        </div>
        <div class="columna">
            <img src="img/devoluciones.jpg" alt=""/>
            <h2 class="title"><a href="TipoControlador?action=view">DEVOLUCIONES</a></h2>
        </div>
        <div class="columna">
            <img src="img/lab.jpg" alt=""/>
            <h2 class="title"><a href="ProductoControlador?action=view">LABORATORIO</a></h2>
        </div>
        </div>
        
    </center>
    </body>

   <!-- <section class="cuerpo">
       <div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/lab.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="UsuarioControlador">USUARIO</a></h2>
                <span class="caption">USUARIOS</span>
            </div>
        </div>
        <div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/lab.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="ProductoControlador?action=view">Información</a></h2>
                <span class="caption">Laboratorio</span>
            </div>
        </div>
        <!--<div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/proveedor.jpeg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="ProveedorControlador?action=view">Información</a></h2>
                <span class="caption">Proveedor</span>
            </div>
        </div> 
        
        <div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/devoluciones.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="TipoControlador?action=view">Información</a></h2>
                <span class="caption">devoluciones</span>
            </div>
        </div>-->
 
    <br>><br>
    <center>
    <section class="cuerpo">
        
        <!--<div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/compra.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="CompraControlador?action=view">Información</a></h2>
                <span class="caption">Compra</span>
            </div>
        </div>
        
         <div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/detalle_compra.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="MarcaControlador?action=view">Información</a></h2>
                <span class="caption">detalle compra</span>
            </div>
        </div>-->
    </section>
    </center>
    <br><br>
    <!--<section class="cuerpo">

        <div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/venta.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="VentaControlador?action=view">Información</a></h2>
                <span class="caption">Ventas</span>
            </div>
        </div>
        <div class="card">
            <div class="imgbox">
                <div class="img">
                    <img src="img/detalle_venta.jpg">
                </div>
            </div>
            <div class="details">
                <h2 class="title"><a href="Venta_productoControlador?action=view">Información</a></h2>
                <span class="caption">Detalle Venta</span>
                
            </div>
        </div>

    </section> -->
    <br><br>
</body>
</html>
