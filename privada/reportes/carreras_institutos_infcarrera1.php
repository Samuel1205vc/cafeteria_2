<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html>
<head>
             <script type='text/javascript'>
            var ventanaCalendario=false
                function imprimir() {
                    if (confirm(' Desea Imprimir ?')){
                        window.print();
                    }
                }
            </script>
        </head>
            <body style='cursor:hand' onClick='imprimir();'>";

            $sql = $db->Prepare("SELECT CONCAT_WS(' ',ca.carrera,ca.duracion) as carrera, i.nombre
                     FROM carreras ca
                     INNER JOIN institutos i ON i.id_instituto = ca.id_instituto
                                          
                        ");
            $rs = $db->GetAll($sql); 
                              
            $sql1 = $db->Prepare("SELECT *
                                  FROM cafeteria
                                  WHERE id_cafeteria = 1
                                  AND _estado <> 'X'
                                  ");
            $rs1 = $db->GetAll($sql1);
            $nombre = $rs1[0]["nombre"];
            $logo = $rs1[0]["logo"];
            $fecha = date("Y-m-d H:i:s");

            if($rs1){
                echo"<table width='100%'' border='0'>
                        <tr>   
                        <td ><img src='../cafeteria/logos/{$logo}' width='70%' ></td>
                        <td align='center' width='80%'><h1>REPORTES DE CARRERAS-INSTITUTOS inf_carrera</h1></td> 
                        </tr>
                        </table>";
                echo"
                <center>
                    <table border='1' cellspacing='0'>
                    <tr>
                    <th>Nro</th><th>CARRERAS</th><th>NOMBRE DEL INSTITUTO</th>
                    </tr>";
                    $b=1;
                    foreach ($rs as $k => $fila) {                                       
                        echo"<tr>
                                <td align='center'>".$b."</td>
            
                                <td>".$fila['carrera']."</td>
                                <td>".$fila['nombre']."</td>
                             </tr>";
                             $b=$b+1;
                    }
                echo"</table><br>
                <b>fecha :</b>".$fecha."</center>";   
        }
        echo "</body>
        </html> ";

?>