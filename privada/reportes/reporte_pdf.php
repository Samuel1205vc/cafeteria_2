<?php
ob_start();
session_start();
require_once("../../conexion.php");

//$db->debug=true;

echo"<html>
        <head>
        </head>
            <body>";

            $sql = $db->Prepare("SELECT cli.*,CONCAT_WS(' ',c.nombre,c.ap,c.am)AS cliente,CONCAT_WS(' ',em.nombre,em.apellidos)AS empleado
                                FROM consumos_clientes cli
                                INNER JOIN empleados em ON em.id_empleado= cli.id_empleado
                                INNER JOIN clientes c ON c.id_cliente= cli.id_cliente
                                WHERE em._estado <> 'X'
                                AND cli._estado <> 'X'
                                AND c._estado <> 'X'                     
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
                        <td ><img src='http://".$_SERVER['HTTP_HOST']."/SIS_CAFETERIA_2/privada/cafeteria/logos/{$logo}' width='100%' ></td>
                        <td align='center' width='80%'><h1>REPORTES DE CONSUMO CLIENTES</h1></td> 
                        </tr>
                        </table>";
                echo"
                <center>
                    <table border='1' cellspacing='0' width='100%'>
                    <tr>
                    <th>Nro</th>
                    <th>FEC_CONSUMO_CLIENTE</th>
                    <th>MONTO</th>
                    <th>CLIENTES</th>
                    <th>EMPLEADOS</th>
                    </tr>";
                    $b=1;
                    foreach ($rs as $k => $fila) {                                       
                        echo"<tr>
                                <td align='center'>".$b."</td>
            
                                <td align='center'>".$fila['fec_consumo_cliente']."</td>
                                <td align='center'>".$fila['monto']."</td>
                                <td align='center'>".$fila['cliente']."</td>
                                <td align='center'>".$fila['empleado']."</td>
                             </tr>";
                             $b=$b+1;
                    }
                echo"</table><br>
                <b>fecha :</b>".$fecha."</center>";   
        }
        echo "</body>
        </html> ";

    $html=ob_get_clean();
    //echo $html;

    require_once("../dompdf/autoload.inc.php");
    use Dompdf\Dompdf;
    $dompdf =new Dompdf();

    $options = $dompdf->getOptions();
    $options->set(array('isRemoteEnable' => true));
    $dompdf->setOptions($options);

    $dompdf->loadHtml($html);

    $dompdf->setPaper('letter');
    //$dompdf->setPaper('A4', 'landscape');

    $dompdf->render();

    $dompdf->stream("archivo.pdf", array("Attachment" => false));

?>