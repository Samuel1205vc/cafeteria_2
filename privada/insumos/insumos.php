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
       <a  href='../../listado_tablas.php'>Listado de tablas</a>
       <a  href='insumo_nuevo.php'>Nuevo Insumo</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";
       echo " <p> &nbsp;</p>";
         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>LISTADO DE INSUMOS</h1>";

$sql = $db->Prepare("SELECT CONCAT_WS(' ', p.nombre) AS proveedor, i.* 
                     FROM proveedores p, insumos i
                     WHERE p.id_proveedor = i.id_proveedor
                     AND p._estado <> 'X' 
                     AND i._estado <> 'X' 
                     ORDER BY i.id_insumo DESC                      
                        ");
$rs = $db->GetAll($sql);
   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>PROVEEDOR</th><th>INSUMO</th><th>DESCRIPCION</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        <td>".$fila['proveedor']."</td>                        
                        <td>".$fila['nombre']."</td>
                        <td>".$fila['descripcion']."</td>
                        

                        <td align='center'>
                          <form name='formModif".$fila["id_insumo"]."' method='post' action='insumo_modificar.php'>
                            <input type='hidden' name='id_proveedor' value='".$fila['id_proveedor']."'>
                            <input type='hidden' name='id_insumo' value='".$fila['id_insumo']."'>

                            <a href='javascript:document.formModif".$fila['id_insumo'].".submit();' title='Modificar Insumo Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_insumo"]."' method='post' action='insumo_eliminar.php'>
                            <input type='hidden' name='id_insumo' value='".$fila["id_insumo"]."'>
                            <a href='javascript:document.formElimi".$fila['id_insumo'].".submit();' title='Eliminar insumo del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar al insumo ".$fila["nombre"]." ".$fila["descripcion"]."?\"))'; location.href='insumo_eliminar.php''> 
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