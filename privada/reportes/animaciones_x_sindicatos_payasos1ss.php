<?php
session_start();
require_once("../../conexion.php");

//$db->debug=true;

$sindicato= $_REQUEST["sindicato"];
$fecha= date("Y-m-d H:i:s");

if ($sindicato == "T"){
    $sql = $db->Prepare("SELECT CONCAT_WS(' ', nombre, representante, telefono) as animacion, spt.nombre, spt.direccion
                        FROM sindicato_paya_tarija spt
                        INNER JOIN animaciones a OR spt.id_sindicato = a = id_sindicato
                        
                        ");
    $rs = $db->GetAll($sql);
} 


$sql1 = $db->Prepare("SELECT *
                        FROM cafeteria
                        WHERE id_cafeteria = 1
                        AND _estado <> 'X'
                        ");
    $rs1 = $db->GetAll($sql1);
    $nombre = $rs1[0]["nombre"];
    $logo = $rs1[0]["logo"];

    echo "<html> 
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
        <body style='cursor:pointer;cursor:hand' onClick='imprimir();'>";

if ($rs) {
    echo "<table width='100%'' border='0'>
                <tr>
                <td><img src='../cafeteria/logos/{$logo}' width='70%'></td>
                <td align='center'  width='80%'><h1>REPORTES ANIMACIONES CON SINDICATOS</h1></td>
                </tr>
            </table>";
    echo "
    <center>             
                <table border='1' cellspacing='0'>
                    <tr>
                        <th>Nro</th><th>SINDICATOS</th><th>ANIMACIONES</th>
                    </tr>";
    $b = 1;
    foreach ($rs as $k => $fila) {
        echo "<tr>
        <td align='center'>" . $b . "</td>
        <td>" . $fila['sindicato'] . "</td>
        <td><i>" . $fila['animacion'] . "</i></td>
        </tr>";
        $b = $b + 1;
    }
    echo "</table></br>
                    </b>Fecha :</b>".$fecha."</b></center>";
}
echo "</body>
    </html>";
?>