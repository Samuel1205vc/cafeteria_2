<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;

echo"<html> 
       <head>
         <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
       </head>
       <body>
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='tipo_producto_nuevo.php'>Nuevo tipo_producto</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>LISTADO DE TIPOS_PRODUCTOS</h1>";

$sql = $db->Prepare("SELECT *
                     FROM tipos_productos
                     WHERE _estado <> 'X' 
                     ORDER BY id_tipo_producto DESC                      
                        ");
$rs = $db->GetAll($sql);
   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>NOMBRE</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        
                        <td>".$fila['nombre']."</td>
                        <td align='center'>
                          <form name='formModif".$fila["id_tipo_producto"]."' method='post' action='tipo_producto_modificar.php'>
                            <input type='hidden' name='id_tipo_producto' value='".$fila['id_tipo_producto']."'>
                            <a href='javascript:document.formModif".$fila['id_tipo_producto'].".submit();' title='Modificar Tipo_Producto'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_tipo_producto"]."' method='post' action='tipo_producto_eliminar.php'>
                            <input type='hidden' name='id_tipo_producto' value='".$fila["id_tipo_producto"]."'>
                            <a href='javascript:document.formElimi".$fila['id_tipo_producto'].".submit();' title='Eliminar Tipo_Producto del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar al Tipo_Producto ".$fila["nombre"]."?\"))'; location.href='tipo_producto_eliminar.php''> 
                              Eliminar>>
                            </a>
                          </form>                        
                        </td>
                     </tr>";
                     $b=$b+1;
            }
             echo"</table>
          </center>";
    }

echo "</body>
      </html> ";

 ?>