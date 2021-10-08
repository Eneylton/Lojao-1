<?php

require __DIR__ . '../../../vendor/autoload.php';

use App\Entidy\Cliente;
use App\Entidy\Entrega;
use App\Entidy\Mecanico;
use App\Entidy\Movimentacao;
use App\Entidy\Orcamento;
use App\Entidy\Ordem;
use \App\Session\Login;

Login::requireLogin();

if(isset($_SESSION['forma-pagamento'])){

    foreach ($_SESSION['forma-pagamento'] as $item) {

    $troco = $item['troco'];
    $recebido = $item['valor_recebido'];
    $forma_pagamento = $item['forma_pagamento'];
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
        <td style="text-align: left;">' . $value->nome . '</td>
        <td style="text-align: left;"> R$ ' . number_format($value->valor, "2", ",", ".") . '</td>
        </tr>

        ';

        $total_serv += $value->valor;

        $ordem = Ordem::getIDServico($id_serv);
        $ordem->status = 1;
        $ordem->atualizar();

       
}

$result_prod = '';
$total_prod = 0;
 // GERAR CODIGO
$codigo = substr(uniqid(rand()), 0, 6);

$item = new Entrega;
$item->cod_id = $codigo;
$item->status = 1;
$item->cadastar();

foreach ($_SESSION['dados-venda'] as $item) {
    
    $produto         = $item['nome'];
    $codigo_prod     = $item['codigo'];
    $barra           = $item['barra'];
    $produtos_id     = $item['produtos_id'];
    $qtd             = $item['qtd'];
    $uni             = $item['valor_venda'];
    $sub             = $item['subtotal'];
    

    $result_prod .= '
        <tr>
        <td>' . $produto . '</td>
        <td>' . $qtd . '</td>
        <td> R$ ' . number_format($uni, "2", ",", ".") . '</td>
        <td style="text-align: left;"> R$ ' . number_format($sub, "2", ",", ".") . '</td>
        </tr>

        ';

        $total_prod += $sub;

       
        if($recebido >= $sub){

        $orcamento = New Orcamento;

        $orcamento->nome                      =  $produto;
        $orcamento->cod_id                    =  $codigo;
        $orcamento->codigo                    =  $codigo_prod;
        $orcamento->barra                     =  $barra;
        $orcamento->qtd                       =  $qtd;
        $orcamento->valor_venda               =  $uni;
        $orcamento->subtotal                  =  $sub;
        $orcamento->usuarios_id               =  $usuario_id;
        $orcamento->clientes_id               =  $cliente_id;
        $orcamento->mecanicos_id              =  $mecanico_id;
        $orcamento->produtos_id               =  $produtos_id;
        $orcamento->forma_pagamento_id        =  $forma_pagamento;
        $orcamento->cadastar();

        }else{

            $orcamento = New Orcamento;

            $orcamento->nome                      =  $produto;
            $orcamento->cod_id                    =  $codigo;
            $orcamento->codigo                    =  $codigo_prod;
            $orcamento->barra                     =  $barra;
            $orcamento->qtd                       =  $qtd;
            $orcamento->valor_venda               =  $recebido;
            $orcamento->subtotal                  =  $recebido;
            $orcamento->usuarios_id               =  $usuario_id;
            $orcamento->clientes_id               =  $cliente_id;
            $orcamento->mecanicos_id              =  $mecanico_id;
            $orcamento->produtos_id               =  $produtos_id;
            $orcamento->forma_pagamento_id        =  $forma_pagamento;
            $orcamento->cadastar();

        }


        
}


$total_geral = $total_serv + $total_prod + $mao_obra ;

if($forma_pagamento == 1){
    if($recebido >= $sub){
    if(!empty($total_prod)){
        $venda_mov1 = new Movimentacao ;
        $venda_mov1->valor = $total_prod;
        $venda_mov1->tipo = 1;
        $venda_mov1->status = 1;
        $venda_mov1->catdesp_id = 1;
        $venda_mov1->usuarios_id = $usuario_id ;
        $venda_mov1->mecanicos_id   = $mecanico_id;
        $venda_mov1->forma_pagamento_id = $forma_pagamento;
        $venda_mov1->cadastar();
       
       }
    }else{
        if(!empty($total_prod)){
            $venda_mov1 = new Movimentacao ;
            $venda_mov1->valor = $recebido;
            $venda_mov1->tipo = 1;
            $venda_mov1->status = 1;
            $venda_mov1->catdesp_id = 1;
            $venda_mov1->usuarios_id = $usuario_id;
            $venda_mov1->mecanicos_id   = $mecanico_id;
            $venda_mov1->forma_pagamento_id = $forma_pagamento;
            $venda_mov1->cadastar();
           
           }
    }
        if(!empty($total_serv)){
       
        $venda_mov2 = new Movimentacao ;
       
        $venda_mov2->valor = $total_serv;
        $venda_mov2->tipo = 1;
        $venda_mov2->status = 1;
        $venda_mov2->catdesp_id = 4;
        $venda_mov2->usuarios_id = $usuario_id ;
        $venda_mov2->mecanicos_id   = $mecanico_id;
        $venda_mov2->forma_pagamento_id = $forma_pagamento;
        $venda_mov2->cadastar();
        }
       
       
        if(!empty($mao_obra)){
       
           $venda_mov3 = new Movimentacao ;
          
           $venda_mov3->valor = $mao_obra;
           $venda_mov3->tipo = 1;
           $venda_mov3->status = 1;
           $venda_mov3->catdesp_id = 3;
           $venda_mov3->usuarios_id = $usuario_id ;
           $venda_mov3->mecanicos_id   = $mecanico_id;
           $venda_mov3->forma_pagamento_id = $forma_pagamento;
           $venda_mov3->cadastar();
           }

    
}

if($forma_pagamento == 2){

    if(!empty($total_prod)){
        $venda_mov1 = new Movimentacao ;
        $venda_mov1->valor = $total_prod;
        $venda_mov1->tipo = 1;
        $venda_mov1->status = 0;
        $venda_mov1->catdesp_id = 1;
        $venda_mov1->usuarios_id = $usuario_id ;
        $venda_mov1->mecanicos_id   = $mecanico_id;
        $venda_mov1->forma_pagamento_id = $forma_pagamento;
        $venda_mov1->cadastar();
       
       }
       
        if(!empty($total_serv)){
       
        $venda_mov2 = new Movimentacao ;
       
        $venda_mov2->valor = $total_serv;
        $venda_mov2->tipo = 1;
        $venda_mov2->status = 0;
        $venda_mov2->catdesp_id = 4;
        $venda_mov2->usuarios_id = $usuario_id;
        $venda_mov2->mecanicos_id   = $mecanico_id;
        $venda_mov2->forma_pagamento_id = $forma_pagamento;
        $venda_mov2->cadastar();
        }
       
       
        if(!empty($mao_obra)){
       
           $venda_mov3 = new Movimentacao ;
          
           $venda_mov3->valor = $mao_obra;
           $venda_mov3->tipo = 1;
           $venda_mov3->status = 0;
           $venda_mov3->catdesp_id = 3;
           $venda_mov3->usuarios_id = $usuario_id;
           $venda_mov3->mecanicos_id   = $mecanico_id;
           $venda_mov3->forma_pagamento_id = $forma_pagamento;
           $venda_mov3->cadastar();
           }


}

if($forma_pagamento == 3){

    if(!empty($total_prod)){
        $venda_mov1 = new Movimentacao ;
        $venda_mov1->valor = $total_prod;
        $venda_mov1->tipo = 1;
        $venda_mov1->status = 0;
        $venda_mov1->catdesp_id = 1;
        $venda_mov1->usuarios_id = $usuario_id;
        $venda_mov1->mecanicos_id   = $mecanico_id;
        $venda_mov1->forma_pagamento_id = $forma_pagamento;
        $venda_mov1->cadastar();
       
       }
       
        if(!empty($total_serv)){
       
        $venda_mov2 = new Movimentacao ;
       
        $venda_mov2->valor = $total_serv;
        $venda_mov2->tipo = 1;
        $venda_mov2->status = 0;
        $venda_mov2->catdesp_id = 4;
        $venda_mov2->usuarios_id = $usuario_id;
        $venda_mov2->mecanicos_id   = $mecanico_id;
        $venda_mov2->forma_pagamento_id = $forma_pagamento;
        $venda_mov2->cadastar();
        }
       
       
        if(!empty($mao_obra)){
       
           $venda_mov3 = new Movimentacao ;
          
           $venda_mov3->valor = $mao_obra;
           $venda_mov3->tipo = 1;
           $venda_mov3->status = 0;
           $venda_mov3->catdesp_id = 3;
           $venda_mov3->usuarios_id = $usuario_id;
           $venda_mov3->mecanicos_id   = $mecanico_id;
           $venda_mov3->forma_pagamento_id = $forma_pagamento;
           $venda_mov3->cadastar();
           }


}


if($forma_pagamento == 4){
    if(!empty($total_prod)){
        $venda_mov1 = new Movimentacao ;
        $venda_mov1->valor = $total_prod;
        $venda_mov1->tipo = 1;
        $venda_mov1->status = 0;
        $venda_mov1->catdesp_id = 1;
        $venda_mov1->usuarios_id = $usuario_id;
        $venda_mov1->mecanicos_id   = $mecanico_id;
        $venda_mov1->forma_pagamento_id = $forma_pagamento;
        $venda_mov1->cadastar();
       
       }
       
        if(!empty($total_serv)){
       
        $venda_mov2 = new Movimentacao ;
       
        $venda_mov2->valor = $total_serv;
        $venda_mov2->tipo = 1;
        $venda_mov2->status = 0;
        $venda_mov2->catdesp_id = 4;
        $venda_mov2->usuarios_id = $usuario_id;
        $venda_mov2->mecanicos_id   = $mecanico_id;
        $venda_mov2->forma_pagamento_id = $forma_pagamento;
        $venda_mov2->cadastar();
        }
       
       
        if(!empty($mao_obra)){
       
           $venda_mov3 = new Movimentacao ;
          
           $venda_mov3->valor = $mao_obra;
           $venda_mov3->tipo = 1;
           $venda_mov3->status = 0;
           $venda_mov3->catdesp_id = 3;
           $venda_mov3->usuarios_id = $usuario_id;
           $venda_mov3->mecanicos_id   = $mecanico_id;
           $venda_mov3->forma_pagamento_id = $forma_pagamento;
           $venda_mov3->cadastar();
           }


}


if($forma_pagamento ==5){

    if(!empty($total_prod)){
        $venda_mov1 = new Movimentacao ;
        $venda_mov1->valor = $total_prod;
        $venda_mov1->tipo = 1;
        $venda_mov1->status = 0;
        $venda_mov1->catdesp_id = 1;
        $venda_mov1->usuarios_id = $usuario_id;
        $venda_mov1->forma_pagamento_id = $forma_pagamento;
        $venda_mov1->cadastar();
       
       }
       
        if(!empty($total_serv)){
       
        $venda_mov2 = new Movimentacao ;
       
        $venda_mov2->valor = $total_serv;
        $venda_mov2->tipo = 1;
        $venda_mov2->status = 0;
        $venda_mov2->catdesp_id = 4;
        $venda_mov2->usuarios_id = $usuario_id ;
        $venda_mov2->mecanicos_id   = $mecanico_id;
        $venda_mov2->forma_pagamento_id = $forma_pagamento;
        $venda_mov2->cadastar();
        }
       
       
        if(!empty($mao_obra)){
       
           $venda_mov3 = new Movimentacao ;
          
           $venda_mov3->valor = $mao_obra;
           $venda_mov3->tipo = 1;
           $venda_mov3->status = 0;
           $venda_mov3->catdesp_id = 3;
           $venda_mov3->usuarios_id = $usuario_id;
           $venda_mov3->mecanicos_id   = $mecanico_id;
           $venda_mov3->forma_pagamento_id = $forma_pagamento;
           $venda_mov3->cadastar();
           }
}



unset($_SESSION['compras']);
unset($_SESSION['carrinho']);
unset($_SESSION['dados-venda']);
unset($_SESSION['forma-pagamento']);
unset($_SESSION['dados-serv']);


header('location: pdv.php?status=success');
exit;


?>