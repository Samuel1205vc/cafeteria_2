<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='institutos.php'>Listado de Institutos</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>INSERTAR INSTITUTOS</h1>";


/*$sql = $db->Prepare("SELECT *
                     FROM _personas
                     WHERE _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql);*/
 /*  if ($rs) {*/
        echo"<form action='instituto_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  <tr>
                    <th><b>(*)nombre</b></th>
                    <td><input type='text' name='nombre' size='10'></td>
                  </tr>
                  <tr>
                    <th><b>direccion</b></th>
                    <td><input type='text' name='direccion' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
                  </tr>
                  <tr>
                    <th><b>telefono</b></th>
                    <td><input type='text' name='telefono' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>                    
                  </tr>
                  <tr>
                    <th><b>(*)pag_web</b></th><td><input type='text' name='pag_web' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  
                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR INSTITUTO'  >
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;     
    /*}*/

echo "</body>
      </html> ";

 ?>