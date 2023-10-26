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
       <a  href='opcion_nuevo.php'>Nueva Opcion</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

         echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>LISTADO DE OPCIONES</h1>";



$sql1 = $db->Prepare("SELECT * 
                     FROM grupos
                     WHERE _estado <> 'X'                       
                    ");
$rs1 = $db->GetAll($sql1);
        echo"
<!------- INICIO BUSCADOR -------->
    <center>
    <form action='#'' method='post' name='formu'>
    <table border='1' class='listado'>
      <tr>
      <th>
        <b>grupo</b></br>
           <select name='grupo' onclick='buscar_opcion()'>
           <option value=''>--SELECCIONE--</option>";
           foreach ($rs1 as $k => $fila) {
            echo"<option value='".$fila['id_grupo']."'>".$fila['grupo']."</opcion>";
           }
          echo"</select>

        </th>
        <th>
          <b>opcion</b><br />
          <input type='text' name='opcion' value='' size='10' onKeyUp='buscar_opciones()'>
        </th>
        <th>
          <b>contenido</b><br />
          <input type='text' name='contenido' value='' size='10' onKeyUp='buscar_opciones()'>
          
      </tr>
    </table>
    </form>
    </center>
    <!------- FIN BUSCADOR ---------->";

    $sql = $db->Prepare("SELECT o.*, g.grupo 
    FROM grupos g
    INNER JOIN opciones o ON g.id_grupo = o.id_grupo
    AND g._estado <> 'X' 
    AND o._estado <> 'X' 
    ORDER BY o.id_opcion DESC                     
       ");
$rs = $db->GetAll($sql);





   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>GRUPO</th><th>OPCION</th><th>CONTENIDO</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        <td>".$fila['grupo']."</td>                       
                        <td>".$fila['opcion']."</td>
                        <td>".$fila['contenido']."</td>
                        <td align='center'>

                          <form name='formModif".$fila["id_opcion"]."' method='post' action='opcion_modificar.php'>

                          <input type='hidden' name='id_opcion' value='".$fila['id_opcion']."'>

                            <input type='hidden' name='id_grupo' value='".$fila['id_grupo']."'>

                            <a href='javascript:document.formModif".$fila['id_opcion'].".submit();' title='Modificar Grupo Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_opcion"]."' method='post' action='opcion_eliminar.php'>
                            <input type='hidden' name='id_opcion' value='".$fila["id_opcion"]."'>
                            <a href='javascript:document.formElimi".$fila['id_opcion'].".submit();' title='Eliminar Grupo del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar a la opcion ".$fila["opcion"]." ?\"))'; location.href='opcion_eliminar.php''> 
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