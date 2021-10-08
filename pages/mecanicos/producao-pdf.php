<?php

require __DIR__ . '../../../vendor/autoload.php';

use App\Entidy\Mecanico;
use App\Entidy\Ordem;
use \App\Session\Login;

$usuariologado = Login::getUsuarioLogado();

$usuarios_nome = $usuariologado['nome'];
$usuarios_email = $usuariologado['email'];

Login::requireLogin();

$res = "";
$valor = 0;
$sub = 0;
$mec_item = Mecanico :: getID($id);
$mecanico = $mec_item->nome;

$listar = Ordem :: getMecanServMesID($id);

foreach ($listar as $item) {

    switch ($item->servicos_id) {
        case '1':
        $valor = $item->valor * (10 / 100);
        break;
  
        case '2':
        $valor = $item->valor * (10 / 100);
        break;
  
        case '3':
        $valor = $item->valor * (10 / 100);
        break;
  
        case '4':
        $valor = $item->valor * (50 / 100);
        break;
  
        case '6':
           $valor = $item->valor * (10 / 100);
           break;
  
        case '7':
        $valor = $item->valor * (10 / 100);
        break;
  
        case '9':
        $valor = $item->valor * (10 / 100);
        break; 
        
        case '10':
           $valor = $item->valor * (10 / 100);
           break;
  
        default:
           $valor = $item->valor * (50 / 100);
           break;
     }
  
     $sub += $valor;

    
    $res .= '   <tr>
                        
                 <td style="width:130px">' . date('d/m/Y à\s H:i:s', strtotime($item->data)) . '</td>
                 <td style="width:500px; text-align:left">' . $item->servicos. '</td>
                 <td style="width:120px">R$ ' . number_format($valor,"2",",",".")  . '</td>
               
                </tr>
                ';
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        @page {
            margin: 70px 0;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: "Open Sans", sans-serif;
        }

        .header {
            position: fixed;
            top: -70px;
            left: 0;
            right: 0;
            width: 100%;
            text-align: center;
            background-color: #555555;
            padding: 10px;
        }

        .header img {
            width: 160px;
        }

        .footer {
            bottom: -27px;
            left: 0;
            width: 100%;
            padding: 5px 10px 10px 10px;
            text-align: center;
            background: #555555;
            color: #fff;
        }

        .footer .page:after {
            content: counter(page);

        }

        table {
            width: 100%;
            border: 1px solid #555555;
            margin: 0;
            padding: 0;
        }

        th {
            text-transform: uppercase;
        }

        table,
        th,
        td {
            font-size: xx-small;
            border: 1px solid #555555;
            border-collapse: collapse;
            text-align: center;
            padding: 5px;

        }

        tr:nth-child(2n+0) {
            background: #eeeeee;
        }

        p {
            color: #888888;
            margin: 0;
            text-align: center;
        }

        h2 {
            text-align: center;

        }
    </style>

    <title>Inventario</title>
</head>

<body>

<table style="margin-top: -40px;">
        <tbody>
            <tr style="background-color: #fff; color:#000">

                <td style="text-align: left; width:260px; border:1px solid #fff; ">
                    <span style="margin-left:126px; margin-top: -50px; font-size:8px">LOJÃO DO CARRO</span><br>
                    <span style="margin-left:126px; margin-top: -30px; font-size:xx-small ">Email:&nbsp; <?= $usuarios_email  ?> </span><br>
                    <span style="margin-left:126px; margin-top: -30px; font-size:xx-small">Atendente:&nbsp; <?= $usuarios_nome  ?> </span><br>
                    <img style="width:120px; height:50px; float:left;margin-top:-50px; padding:10px; margin-left:-12px;" src="../../01.png">
                    <br />
                    <br />

                </td>
                <td style="text-align:center; font-weight:600; font-size:16px; border:1px solid #fff;"><p>***** Lista Detalhada *****</p><span>Mecânico: <?php echo $mecanico ?></span> 

                <td style="text-align:right; border:1px solid #fff;">Data de Emissão: <?php echo date("d/m/Y") ?><br></td>

            </tr>
        </tbody>
    </table>


    <table>
        <tbody>
            <tr style="background-color:#dd5c00; color:#fff">
                <td style="text-align: center; text-transform:uppercase" colspan="8">LISTA DETALHADA DE SERVIÇOS</td>
            </tr>

            <tr style="background-color: #000; color:#fff">
                <td>DATA</td>
                <td>SERVIÇOS</td>
                <td>VALOR</td>
            </tr>

            <?= $res ?>

            <tr>
                <td colspan="2" style="text-align:right;">
                        <span>TOTAL</span>         
                </td>
                <td>
                <span style="font-size: 16px; font-weight: 300;">R$ <?php echo  number_format($sub,"2",",",".") ?></span>              
                </td>
            </tr>
           
        </tbody>
    </table>

</body>

</html>