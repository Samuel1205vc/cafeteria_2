<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html>
        <head>
        <link rel='stylesheet' href='../../css/estilos.css' type='text/css'>
             <script type='text/javascript'>
            var ventanaCalendario=false
                function imprimir() {
                    ventanaCalendario = window.open('carreras_institutos1.php' , 'calendario', 'width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO')
                }
            </script>
        </head>
            <body>
            <a  href='../../listado_tablas.php'>Listado de tablas</a>
            <a onclick='location.href=\"../../validar.php\"'><input type='button'name='accion' value='Cerrar Sesion' 
            style='cursor:pointer;border-radius:10px;font-weight:bold;height: 25px;' class='boton_cerrar'></a>";

            echo "<h3>USUARIO: ".$_SESSION["sesion_usuario"]." &nbsp;&nbsp; ";
            echo "ROL: ".$_SESSION["sesion_rol"]."</h3>";

        echo "<h1>REPORTE DE CARRERAS CON INSTITUTOS</h1>";

$sql = $db->Prepare("SELECT CONCAT_WS(' ',ca.carrera,ca.duracion) as carrera, i.nombre
                     FROM carreras ca
                     INNER JOIN institutos i ON i.id_instituto = ca.id_instituto
                                           
                        ");
$rs1 = $db->GetAll($sql);
if ($rs1) {
    echo"<center>
          <table class='listado'>
            <tr>                                   
              <th>Nro</th><th>CARRERAS</th><th>NOMBRE DE INSTITUTO</th>
            </tr>";
            $b=1;
        foreach ($rs1 as $k => $fila) {                                       
            echo"<tr>
                    <td align='center'>".$b."</td>

                    <td>".$fila['carrera']."</td>
                    <td>".$fila['nombre']."</td>
                 </tr>";
                 $b=$b+1;
        }
         echo"</table>
         <h2>
            <input type='radio' name='seleccionar' onclick='javascript:imprimir()''>Imprimir
         </h2>
      </center>";
    }
echo "</body>
        </html> ";

?>