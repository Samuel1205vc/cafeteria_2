<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css'type='text/css' />
         <meta http-equiv='Content-type' content='text/html; charset=utf-8' />
         <script type='text/javascript' src='../../ajax.js'></script>
         <script type='text/javascript' src='js/buscar_producto.js'></script>
         <script type='text/javascript' src='js/mostrar_p.js'></script>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>FICHA TECNICA PRODUCTOS</h1>";
        $sql = $db->Prepare("SELECT *
                            FROM marcas                          
                            ");
$rs = $db->GetAll($sql);


echo"
<!------- INICIO BUSCADOR -------->
    <center>
    <form action='#'' method='post' name='formu'>
    <table border='1' class='listado'>
      <tr>
        <th>
        <b>marca</b><br />
        <select name='marca' onChange='buscar_producto()'>
        <option value=''>--seleccione--</option>";
        foreach ($rs as $k => $fila) {
        echo"<option value='".$fila['marca']."'>".$fila['marca']."</option>";    
        }  
echo"</select>
        </th>
        <th>
          <b>nombre_producto</b><br />
          <input type='text' name='nombre_producto' value='' size='10' onKeyUp='buscar_producto()'>
        </th>
          <th>
          <b>imagen</b><br />
          <input type='text' name='imagen' value='' size='10' onKeyUp='buscar_producto()'>
        </th>
        
      </tr>
    </table>
    </form>
    </center>
    <!------- FIN BUSCADOR ---------->";

    echo"<div id='producto1'>";
    echo "</div>";
    echo "</body>
        </html> ";

 ?>