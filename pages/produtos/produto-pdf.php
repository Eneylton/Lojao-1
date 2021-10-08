<?php

require __DIR__ . '../../../vendor/autoload.php';

use App\Entidy\Produto;
use \App\Session\Login;

$usuariologado = Login::getUsuarioLogado();

$usuarios_nome = $usuariologado['nome'];
$usuarios_email = $usuariologado['email'];

Login::requireLogin();

$res = "";

$listar = Produto::getRelacinadas(null,'p.data ASC');

$sub_comp = 0;
$sub_vend = 0;
$total1 = 0;
$total2 = 0;
$total_qtd = 0;
$total_comp = 0;
$total_vend = 0;
$saldo = 0;
$soma1 = 0;
$soma2 = 0;

foreach ($listar as $item) {
    if (empty($item->foto)) {
        $foto = 'imgs/sem.jpg';
    } else {
        $foto = $item->foto;
    }

    $qtd = $item->estoque;
    $compr = $item->valor_compra;
    $venda = $item->valor_venda;

    $total1 += $compr;
    $total2 += $venda;
    
    $sub_comp  =  $qtd * $compr;
    $sub_vend  =  $qtd * $venda;

    $total_comp += $sub_comp;
    $total_vend += $sub_vend;

    $total_qtd  += $qtd;

    $soma1 = $total2 - $total1;

    $soma2 = $total_vend - $total_comp;

    $res .= '   <tr>
                
                       
                        
                        <td style="width:120px">' . date('d/m/Y à\s H:i:s', strtotime($item->data)) . '</td>
                        <td style="text-transform: uppercase; text-align:left">' . $item->categoria . '</td>
                        <td style="text-transform: uppercase;text-align:left">' . $item->nome . '</td>
                        <td style="text-transform: uppercase;">' . $item->estoque . '</td>
                        <td style="text-transform: uppercase;text-align:left "> R$ ' . number_format($item->valor_compra, "2", ",", ".") . '</td>
                        <td style="text-transform: uppercase;text-align:left "> R$ ' . number_format($item->valor_venda, "2", ",", ".") . '</td>
                        <td style="text-transform: uppercase;text-align:left "> R$ ' . number_format($sub_comp, "2", ",", ".") . '</td>
                        <td style="text-transform: uppercase;text-align:left "> R$ ' . number_format($sub_vend, "2", ",", ".") . '</td>
    
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
                <td style="text-align:center; font-weight:600; font-size:16px; border:1px solid #fff;"><p>***** Registro de Inventário *****</p> <span> CPF/CNPJ: 08.192.366/0001-11 I.E./R.G.: 122291131
Livro No. 1 Folha: 0002 </span></td>
                <td style="text-align:right; border:1px solid #fff;">Data de Emissão: <?php echo date("d/m/Y") ?><br></td>

            </tr>
        </tbody>
    </table>


    <table>
        <tbody>
            <tr style="background-color:#ff0000; color:#fff">
                <td style="text-align: center; text-transform:uppercase" colspan="8">Lista de PRODUTOS</td>
            </tr>

            <tr style="background-color: #000; color:#fff">

               
                <td > DATA</td>
                <td> CATEGORIA </td>
                <td> NOME </td>
                <td> QTD </td>
                <td> COMPRA </td>
                <td> VENDA </td>
                <td> SUB.COMP </td>
                <td> SUB.VEND </td>

            </tr>

            <?= $res ?>
            <tr>
            <td colspan="3" style="text-align: right; font-size:13px">TOTAL</td>
            <td style="text-align: center;font-size:12px"><?= $total_qtd ?></td>
            <td style="text-align: left;font-size:12px">R$ <?= number_format($total1, "2",",",".") ?></td>
            <td style="text-align: left;font-size:12px">R$ <?= number_format($total2, "2",",",".") ?></td>
            <td style="text-align: left;font-size:12px">R$ <?= number_format($total_comp, "2",",",".") ?></td>
            <td style="text-align: left;font-size:12px">R$ <?= number_format($total_vend, "2",",",".") ?></td>
            </tr>
            <tr>
            <td colspan="4" style="text-align: right; font-size:13px">DIFEREÇA</td>
            </td>
            <td colspan="2" style="text-align: center;font-size:12px; color:#ff0000">
            R$ <?= number_format($soma1, "2",",",".") ?>
            </td>
            <td colspan="2" style="text-align: center;font-size:12px; color:#ff0000">
            R$ <?= number_format($soma2, "2",",",".") ?>
            </td>
            </tr>

        </tbody>
    </table>

</body>

</html>