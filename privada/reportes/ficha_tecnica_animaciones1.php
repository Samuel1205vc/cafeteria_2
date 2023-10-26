<?php
session_start();
require_once("../../conexion.php");

$db->debug=true;
$id_animacion = $_REQUEST["id_animacion"];
$sql = $db->Prepare("SELECT a.*, CONCAT_WS(' ', spt.nombre, spt.direcion) AS SindicatoPayasos
                     FROM animaciones a
                     INNER JOIN sindicato_paya_tarija spt ON spt.id_sindicato = a.id_sindicato
                     WHERE id_animacion=?                                           
                        ");
$rs = $db->GetAll($sql, array($id_animacion));
$sql1 = $db->Prepare("SELECT *
                     FROM cafeteria
                     WHERE id_cafeteria=1
                     AND _estado <> 'X'                     
                        ");
            $rs1 = $db->GetAll($sql1);
            $nombre =$rs1[0]["nombre"];
            $logo =$rs1[0]["logo"];
            echo"<html>
        <head>
           <script type='text/javascript'>
            var ventanaCalendario=false
            function imprimir(){
                if(confirm(' Desea imprimir ?')){
                    window.print();
                }
            } 
           </script>
           </head>
           <body style='cursor:pointer;cursor:hand' onClick='imprimir();'>";
           if ($rs){
            echo"<table width='100%' border='0'>
                <td><img src='../cafeteria/logos/{$logo}' width='70%'></td>
                <td align='center'  width='80%'><h1>REPORTES DE ANIMACIONES Y SINDICATOS</h1></td>
            </table>";

            echo"
            <center>
                <table border='1' cellspacing='0'>";                
                $b=1;
                foreach($rs as $k => $fila){
                    echo"
                    <tr>
                        <th align='riht'>Nombre</th><th>:</th>
                        <td><input type='text' name='nombre' value='".$fila['nombre']."' disabled=''></td>
                    </tr>
                    <tr>
                        <th align='riht'>Representante</th><th>:</th>
                        <td><input type='text' name='representante' value='".$fila['representante']."' disabled=''></td>
                    </tr>
                    <tr>
                    <th align='riht'>Direccion</th><th>:</th>
                    <td><input type='text' name='direccion' value='".$fila['direccion']."' disabled=''></td>
                </tr>
                <tr>
                        <th align='riht'>Telefono</th><th>:</th>
                        <td><input type='text' name='telefono' value='".$fila['telefono']."' disabled=''></td>
                    </tr>

                   
                    </table>";
                    $b=$b+1;
                    
                    
                }
                
            }
        echo "</body>
            </html>";
?>