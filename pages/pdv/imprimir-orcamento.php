<?php

require __DIR__ . '../../../vendor/autoload.php';

use App\Entidy\Cliente;
use App\Entidy\FormaPagamento;
use App\Entidy\Mecanico;
use App\Entidy\Ordem;
use App\Session\Login;

Login::requireLogin();

$nome_pagamento = "";

if(isset($_SESSION['forma-pagamento'])){

    foreach ($_SESSION['forma-pagamento'] as $item) {

    $troco = $item['troco'];
    $recebido = $item['valor_recebido'];
    $forma_pagamento = $item['forma_pagamento'];

    $id_pagamento = FormaPagamento::getID($forma_pagamento);
    $nome_pagamento  = $id_pagamento ->nome;

    }


}

$usuariologado = Login::getUsuarioLogado();

$usuario    = $usuariologado['nome'];
$usuario_id = $usuariologado['id'];

$total_geral = 0;

if (isset($_SESSION['dados-serv'])) {

    foreach ($_SESSION['dados-serv'] as $item) {

        $cliente_id      = $item['cliente'];
        $mecanico_id     = $item['mecanico'];
        $mao_obra        = $item['obra'];
        $servicos        = $item['servico'];
        $sub             = $item['total'];
    }

    $cliente = Cliente::getclientID($cliente_id);
    $nome_cliente       = $cliente->nome;
    $email_cliente      = $cliente->email;
    $telefone_cliente   = $cliente->telefone;
    $marca_cliente      = $cliente->marca;
    $fabricante_cliente = $cliente->fabricante;
    $telefone_cliente   = $cliente->telefone;

    $placa_cliente      = $cliente->placa;

    $mecanico = Mecanico::getID($mecanico_id);
    $nome_mecanico = $mecanico->nome;
}

$ordem_servicos = Ordem::getOcamentoID($cliente_id);

$result = '';
$total_serv = 0;
foreach ($ordem_servicos as $value) {
    $id_serv = $value->id;
    
    $result .= '
        <tr>
        <td style="text-align: left;font-size:8px;">' . $value->nome . '</td>
        <td style="text-align: left;font-size:8px;"> R$ ' . number_format($value->valor, "2", ",", ".") . '</td>
        </tr>

        ';

        $total_serv += $value->valor;

}

$result_prod = '';
$total_prod = 0;

//  // GERAR CODIGO
// $codigo = substr(uniqid(rand()), 0, 6);

// $item = new Entrega;
// $item->cod_id = $codigo;
// $item->status = 1;
// $item->cadastar();

foreach ($_SESSION['dados-venda'] as $item) {
    
    $produto         = $item['nome'];
    $codigo_prod     = $item['codigo'];
    $barra           = $item['barra'];
    $produtos_id     = $item['produtos_id'];
    $qtd             = $item['qtd'];
    $uni             = $item['valor_venda'];
    $sub             = $item['subtotal'];
    $porcentagem     = $item['porcentagem'];
    

    $result_prod .= '
        <tr>
        <td style="text-align: left;font-size:8px;">' . $produto . '</td>
        <td style="text-align: left;font-size:8px;">' . $qtd . '</td>
        <td style="text-align: left;font-size:8px;"> R$ ' . number_format($uni, "2", ",", ".") . '</td>
        <td style="text-align: left;font-size:8px;"> R$ ' . number_format($sub, "2", ",", ".") . '</td>
        </tr>

        ';

        $total_prod += $sub;
       
}

$total_geral = $total_serv + $total_prod + $mao_obra ;

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
            margin: 2;
            padding: 2;
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


    </style>

    <title>Recibo</title>
</head>

<body>

<table style="margin-top:-60px;width:100%">

        <tbody>
            <tr style="background-color: #fff; color:#000">
             
                <td style="border:1px solid #fff; text-align:center">
                <img style="width:80px; height:30px;" src="../../01.png">
                <br>
                <span style="font-size:x-small">LOJÃO DO CARRO </span><br>
                <span>Comprovante de serviços</span>
                </td>
               
            </tr>
        </tbody>

</table>
<table style="width: 100%;">

        <tbody>
            <tr style="background-color: #fff; color:#000">
                <td style="border:1px dotted #000; text-align:left;">
                <span style="font-size: 9px;"> Atendente: <?= $usuario  ?></span><br>
                <span style="font-size: 9px;"> Mecânico: <?= $nome_mecanico ?></span>
                </td>
               
                <td style="border:1px dotted #000; text-align:right;">
                 <span style="font-size: 9px;"> Emissão: <?php echo date("d/m/Y") ?></span>
                </td>
            </tr>
            
        </tbody>
        
</table>

<table style="width: 100%;">

        <tbody>
            <tr style="background-color: #fff; color:#000">
                <td style="border:1px dotted #000; text-align:left;">
                <span style="font-size: 9px;">Cliente: <?= $nome_cliente ?></span><br>
                <span style="font-size: 9px;">Placa: <?= $placa_cliente  ?></span>
                </td>
                <td style="border:1px dotted #000; text-align:left">
                <span style="font-size: 9px;">Email: <?= $email_cliente ?></span><br>
                <span style="font-size: 9px;">Contato: <?= $telefone_cliente ?></span>
                </td>
                
            </tr>
            <tr style="background-color: #fff; color:#000; font-size:9px">
                <td style="border:1px solid #eeeeee; text-align:left;font-size:9px">
                
                <span style="font-weight: 200;">Forma de Pagamento: <?= $nome_pagamento  ?></span>
               
                </td>
                <td style="border:1px solid #eeeeee; text-align:left;font-size:9px">
                <span style="font-weight: 200;font-size:10px"> <?= $nome_pagamento  ?></span>
               
                </td>
            </tr>
           

        </tbody>

</table>

<table style="width: 100%;">
        <tbody>
            <tr style="background-color: #000; color:#fff">
                
                <td style="text-align: left; font-size:8px">SERVIÇOS</td>
                <td style="text-align: left;font-size:8px;">VALOR</td>
               
            </tr>     
             <?= $result; ?> 

             <tr style="background-color: #dddddd; color:#000">
             <td style="text-align: left;font-size:9px">
               <span>TOTAL</span>
             </td>
             <td style="text-align: left;">
              <span style="font-size:10px;">R$ <?= number_format( $total_serv,"2",",",".") ?></span>
             </td>
             </tr>
        </tbody>
</table>
<br>

<table style="width:100%; margin-top:-4px">
        <tbody>
            <tr style="background-color: #000; color:#fff">
                
                <td style="text-align: left; font-size:8px">PRODUTOS</td>
                <td style="text-align: left; font-size:8px">QTD</td>
                <td style="text-align: left; font-size:8px">UNI</td>
                <td style="text-align: left; font-size:8px">SUBTOTAL</td>
               
            </tr>     
             <?= $result_prod; ?>  

             <tr style="background-color: #dddddd; color:#000">
             <td style="text-align: left;" colspan="3">
             <span style="font-size: 10px;">TOTAL</span>
             </td>
             <td style="text-align: left;" >
             <span style="font-size: 10px;">R$ <?= number_format( $total_prod,"2",",",".") ?></span>
             </td>
             </tr>
        </tbody>
</table>
<hr>
<table style="width:100%; margin-top:-4px">
        <tbody style="border:1px dotted #000">
                <tr style="background-color: #fff; color:#000; ">

                    <td style="text-align: left;">
                    <span style="font-size: 9px;"> Total do(s) Serviço(s)  [+]...................................... R$ <?= number_format($total_serv,"2",",",".") ?></span>
                    <br>
                    <span style="font-size: 9px;"> Total do(s) Produto(s)  [+]...................................... R$ <?= number_format($total_prod,"2",",",".") ?></span> 
                    <br>
                    <span style="font-size: 9px;"> Total da Mão de Obra    [+]...................................... R$ <?= number_format($mao_obra ,"2",",",".") ?> </span> 
                    <br>
                    <br>
                    <br>
                    <span style="font-size: 9px;">  Valor Recebido  [+]---------------------------------------- R$ <?= number_format($recebido,"2",",",".") ?> </span>
                    <br>  
                    
                    <span style="font-size: 9px;"> Desconto [+]-------------------------------------------------<?= $porcentagem ?> %</span>
                    <br>
                    <span style="font-size: 9px;"> Total [+]------------------------------------------------------ R$ <?= number_format($total_geral,"2",",",".") ?></span>
                    <br>
                    <span style="font-size: 9px;"> Troco [-]------------------------------------------------------ R$ <?= number_format($troco,"2",",",".") ?> </span> 
                    <br>
                   </td>

                </tr>        

        </tbody>
</table>
</body>

</html>
