<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        
        <script type="text/javascript">

        </script>
    </head>
    <body>
        
        <form action="Login" method="post">
            
            <div id="contenedor">
               

                <div id="contenedorcentrado">
                    
                    <div id="login">
                        
                        <form id="loginform">
                              <center>
                           <p id="titulo">INICIAR SESION</p>
                </center>
 
                            
                            <label for="usuario">Usuario</label>
                            <input id="usuario" type="text" name="usuario" placeholder="Usuario" required>
                            <br>
                            <label for="password">Contraseña</label>
                            <input id="password" type="password" placeholder="Contraseña" name="password" required>
                            <br>
                            <button type="submit" title="Ingresar" name="Ingresar">INICIAR SESION</button>
                        </form>

                    </div>
                  
                    
                    
                </div>
            </div>
        </form>
    </body>
</html>
