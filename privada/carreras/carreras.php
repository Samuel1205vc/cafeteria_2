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
       <a  href='carrera_nuevo.php'>Nueva Carrera</a>
       <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' 

        class='boton_cerrar'></a>";
        echo"<h3>USUARIO:".$_SESSION["sesion_usuario"]." &nbsp;&nbsp;";
        echo"ROL: ".$_SESSION["sesion_rol"]."</h3>"; 
        echo"<h1>LISTADO DE CARRERAS</h1>";

$sql = $db->Prepare("SELECT i.nombre,ca.*
                     FROM institutos i, carreras ca
                     WHERE i.id_instituto = ca.id_instituto
                     ORDER BY ca.id_carrera DESC                      
                        ");
$rs = $db->GetAll($sql);
   if ($rs) {
        echo"<center>
              <table class='listado'>
                <tr>                                   
                  <th>Nro</th><th>INSTITUTO</th><th>CARRERA</th><th>GRADO_ACADEMICO</th><th>DESCRIPCION</th><th>DURACION</th>
                  <th><img src='../../imagenes/modificar.gif'></th><th><img src='../../imagenes/borrar.jpeg'></th>
                </tr>";
                $b=1;
            foreach ($rs as $k => $fila) {                                       
                echo"<tr>
                        <td align='center'>".$b."</td>
                        <td>".$fila['nombre']."</td> 
                        <td>".$fila['carrera']."</td>
                      
                        <td>".$fila['grado_academico']."</td> 
                        <td>".$fila['descripcion']."</td>
                        <td>".$fila['duracion']."</td>   
                        
                        <td align='center'>
                          <form name='formModif".$fila["id_carrera"]."' method='post' action='carrera_modificar.php'>
                            <input type='hidden' name='id_carrera' value='".$fila['id_carrera']."'>
                            <input type='hidden' name='id_instituto' value='".$fila['id_instituto']."'>
                            <a href='javascript:document.formModif".$fila['id_carrera'].".submit();' title='Modificar Carrera del Sistema'>
                              Modificar>>
                            </a>
                          </form>
                        </td>
                        <td align='center'>  
                          <form name='formElimi".$fila["id_carrera"]."' method='post' action='carrera_eliminar.php'>
                            <input type='hidden' name='id_carrera' value='".$fila["id_carrera"]."'>
                            <input type='hidden' name='id_instituto' value='".$fila['id_instituto']."'>
                            <a href='javascript:document.formElimi".$fila['id_carrera'].".submit();' title='Eliminar Carrera del Sistema' onclick='javascript:return(confirm(\"Desea realmente Eliminar a la Carrera ".$fila["carrera"]." ?\"))'; location.href='carrera_eliminar.php''> 
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