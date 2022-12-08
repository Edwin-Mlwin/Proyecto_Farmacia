
<%
    String opcion = request.getParameter("opcion");
%>
<!--<header>
    <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    <nav>
        <ul>
		<li id="inicio"><a href="index.jsp">INICIO</a></li>
                <li id="usuario"><a href="UsuarioControlador">USUARIOS</a></li>
                <li id="proveedores"><a href="ProveedorControlador">PROVEEDORES</a></li>
                <li id="empleados"><a href="EmpleadoControlador">EMPLEADOS</a></li>
                <li id="compras"><a href="CompraControlador">COMPRAS</a></li>
                <li id="ventas"><a href="VentaControlador">VENTAS</a></li>
                <!--<li id="marcas"><a href="MarcaControlador">DETALLE COMPRA</a></li>
                <li id="tipos"><a href="TipoControlador">DEVOLUCIONES</a></li>
                <li id="productos"><a href="ProductoControlador">LABORATORIO</a></li>
                <!--<li id="venta_productos"><a href="Venta_productoControlador">DETALLE VENTA</a></li>
                <li id="producto_tallas"><a href="Producto_tallaControlador">PRODUCTOS</a></li>
                <li id="logout"><a href="Logout">CERRAR SESION</a></li>
	 </ul>
    </nav>
    
  
</header>-->


<html>
  <head>
      
      <link href="../css/estilo.css" rel="stylesheet" type="text/css"/>
  </head>
  <body><div class="area"></div><nav class="main-menu">
            <ul>
                <li>
                    <a href="index.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            INICIO
                        </span>
                    </a>
                  
                </li>
                <li class="has-subnav">
                    <a href="UsuarioControlador">
                        <i class="fa fa-laptop fa-2x"></i>
                        <span class="nav-text">
                            USUARIOS
                        </span>
                    </a>
                    
                </li>
                <li class="has-subnav">
                    <a href="ProveedorControlador">
                       <i class="fa fa-list fa-2x"></i>
                        <span class="nav-text">
                            PROVEEDORES
                        </span>
                    </a>
                    
                </li>
                <li class="has-subnav">
                    <a href="EmpleadoControlador">
                       <i class="fa fa-folder-open fa-2x"></i>
                        <span class="nav-text">
                            EMPLEADOS
                        </span>
                    </a>
                   
                </li>
                <li>
                    <a href="CompraControlador">
                        <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            COMPRAS
                        </span>
                    </a>
                </li>
                <li>
                    <a href="VentaControlador">
                        <i class="fa fa-font fa-2x"></i>
                        <span class="nav-text">
                           VENTAS
                        </span>
                    </a>
                </li>
                <li>
                   <a href="TipoControlador">
                       <i class="fa fa-table fa-2x"></i>
                        <span class="nav-text">
                            DEVOLUCIONES
                        </span>
                    </a>
                </li>
                <li>
                   <a href="ProductoControlador">
                        <i class="fa fa-map-marker fa-2x"></i>
                        <span class="nav-text">
                            LABORATORIO
                        </span>
                    </a>
                </li>
                <li>
                    <a href="Producto_tallaControlador">
                       <i class="fa fa-info fa-2x"></i>
                        <span class="nav-text">
                            PRODUCTOS
                        </span>
                    </a>
                </li>
            </ul>

            <ul class="logout">
                <li>
                   <a href="Logout">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                           CERRAR
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
  </body>
    
</html>



