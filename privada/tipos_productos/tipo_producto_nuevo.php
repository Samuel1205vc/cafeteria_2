<?php
session_start();
require_once("../../conexion.php");
require_once("../../libreria_menu.php");
//$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       
       
       <p> &nbsp;</p> ";

        echo "<h1>INSERTAR TIPO_PRODUCTO</h1>";

/*$sql = $db->Prepare("SELECT *
                     FROM _personas
                     WHERE _estado <> 'X'                        
                        ");
$rs = $db->GetAll($sql);*/
 /*  if ($rs) {*/
        echo"<form action='tipo_producto_nuevo1.php' method='post' name='formu'>";
        echo"<center>
                <table class='listado'>
                  
                  
                  
                  <tr>
                    <th><b>(*)Nombre</b></th><td><input type='text' name='nombre' size='10' onkeyup='this.value=this.value.toUpperCase()'>
                    </td>
                  </tr>
                  
                  
                  <tr>
                    <td align='center' colspan='2'>  
                      <input type='submit' value='ADICIONAR TIPO_PRODUCTO'  >
                    </td>
                  </tr>
                </table>
                </center>";
          echo"</form>" ;     
    /*}*/

echo "</body>
      </html> ";

 ?>