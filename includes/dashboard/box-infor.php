<?php

use App\Entidy\Caixa;
use App\Entidy\Movimentacao;;

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
}

// DIÁRIA

$despesa = 0;
$receita = 0;
$total_dia = 0;

$despesa1 = 0;
$receita1 = 0;
$total_mes = 0;

$movimentacoes  = Movimentacao :: getListMovDia();

foreach ($movimentacoes as $item) {

  $status1 = $item->status;

  if ($item->status <= 0) {
     $valor1 = 0;
     if ($item->tipo == 0) {

        $despesa += $valor1;
     } else {

        $receita += $valor1;
     }
  } else {
     if ($item->tipo == 0) {

        $despesa += $item->valor;
     } else {

        $receita += $item->valor;
     }
  }

}

  $total_dia = ($receita - $despesa);


// MÊS

$movi_mes  = Movimentacao :: getListMovMes();

foreach ($movi_mes as $item) {

  if ($item->status <= 0) {
     $valor1 = 0;
     if ($item->tipo == 0) {

        $despesa1 += $valor1;
     } else {

        $receita1 += $valor1;
     }
  } else {
     if ($item->tipo == 0) {

        $despesa1 += $item->valor;
     } else {

        $receita1 += $item->valor;
     }
  }

}

  $total_mes = ($receita1 - $despesa1);

// MÃO DE OBRA

$obraDiaria = Caixa ::getObraDiaria();
$obraMes = Caixa ::getObraMes();

$obra_diaria = $obraDiaria->total;
$obra_mes    = $obraMes->total;

// CONTAS E PAGAR

$contas_pagar = Movimentacao :: getContasPagar();

$contaPagar = $contas_pagar->total;

// CONTAS E RECEBAR

$contas_receber = Movimentacao :: getContasReceber();

$contaReceber = $contas_receber->total;

// DESPESAS DIÁRIOAS

$despesas_dia = Movimentacao :: getDespesasDiarias();

$despesasDia = $despesas_dia->total;


// DESPESAS MENSAL

$servicos_mensal = Movimentacao :: getServicosMensal();

$servicoMensal = $servicos_mensal->total;

?>

<div class="container-fluid">
  <!-- Small boxes (Stat box) -->
  <div class="row">
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-teal">
        <div class="inner">
          Faturamento Diário: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($total_dia,"2",",",".") ?></h3>

        </div>
        <div class="icon">
          <i class="ion ion-bag"></i>
        </div>
        <a href="#" class="small-box-footer">Mais Informações <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-success">
      <div class="inner">
          Faturamento Mensal: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($total_mes,"2",",",".") ?></h3>

        </div>
        <div class="icon">
          <i class="ion ion-cash"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-lightblue">
      <div class="inner">
          Mão de Obra Diária: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($obra_diaria,"2",",",".") ?></h3>

        </div>
        <div class="icon">
        <i class="fa fa-wrench" aria-hidden="true"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-navy">
      <div class="inner">
          Mão de Obra Mensal: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($obra_mes,"2",",",".") ?></h3>

        </div>
        <div class="icon">
        <i class="fa fa-cog" aria-hidden="true"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>

  </div>

  <div class="row">
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-fuchsia">
        <div class="inner">
          Contas á pagar: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($contaPagar,"2",",",".") ?></h3>

        </div>
        <div class="icon">
        <i class="fa fa-minus-circle" aria-hidden="true"></i>
        </div>
        <a href="#" class="small-box-footer">Mais Informações <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-orange">
      <div class="inner">
          Cantas á receber: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($contaReceber,"2",",",".") ?></h3>

        </div>
        <div class="icon">
        <i class="fa fa-plus-circle" aria-hidden="true"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-danger">
      <div class="inner">
          Despesas Diária: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($despesasDia,"2",",",".") ?></h3>

        </div>
        <div class="icon">
        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
        </div>
        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-warning">
      <div class="inner">
          Serviços Mensal: &nbsp;<span><?= date('d/m/Y') ?></span>
          <h3>R$ <?= number_format($servicoMensal,"2",",",".") ?></h3>

        </div>
        <div class="icon">
        <i class="fa fa-car" aria-hidden="true"></i>
        </div>
        <a href="#" class="small-box-footer">Mais detalhes <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>

  </div>

  <div class="row">
    <div class="col-md-3">

      <div class="info-box mb-3 bg-secondary">
        <span class="info-box-icon"><i class="fas fa-tag"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">INVENTÁRIO</span>
          <span class="info-box-number">R$ <?= number_format($total_comp,"2",",",".") ?></span>
        </div>
        <!-- /.info-box-content -->
      </div>
    </div>
    <div class="col-md-3">
      <div class="info-box mb-3 bg-maroon">
        <span class="info-box-icon"><i class="fas fa-tag"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">VALOR BRUTO</span>
          <span class="info-box-number">R$ <?= number_format($total_vend,"2",",",".") ?></span>
        </div>
        <!-- /.info-box-content -->
      </div>
    </div>
    <div class="col-md-3">

      <div class="info-box">
        <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">VALOR DE COMPRAS</span>
          <span class="info-box-number">
            <small>R$</small>
            <?= number_format($total1,"2",",",".") ?>
          </span>
        </div>

      </div>

    </div>
    <div class="col-md-3">

      <div class="info-box">
        <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-cog"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">VALOR DE VENDAS</span>
          <span class="info-box-number">
            <small>R$</small>
            <?= number_format($total2,"2",",",".") ?>
          </span>
        </div>

      </div>

    </div>

        <div class="col-md-6">

        <div class="card-body" style="background:#0000004a">
                  <div class="d-flex">
                     <p class="d-flex flex-column">
                        <span class="text-bold text-lg">R$ &nbsp; </span>
                        <span>Acumulado no mês</span>
                     </p>
                     <p class="ml-auto d-flex flex-column text-right">
                        <span class="text-info">
                           <i class="fas fa-arrow-up"></i> &nbsp; 
                        </span>
                        <span class="text-muted">Acumulado do dia </span>
                     </p>
                  </div>
                  <!-- /.d-flex -->

                  <div class="card-body">

                     <canvas id="myChart" width="400" height="100"></canvas>

                  </div>
               </div>
      
        </div>


        <div class="col-md-6">

        <div class="card-body" style="background:#0000004a">
                  <div class="d-flex">
                     <p class="d-flex flex-column">
                        <span class="text-bold text-lg">R$ &nbsp; </span>
                        <span>Acumulado no mês</span>
                     </p>
                     <p class="ml-auto d-flex flex-column text-right">
                        <span class="text-info">
                           <i class="fas fa-arrow-up"></i> &nbsp; 
                        </span>
                        <span class="text-muted">Acumulado do dia </span>
                     </p>
                  </div>
                  <!-- /.d-flex -->

                  <div class="card-body">

                     <canvas id="myChart2" width="400" height="100"></canvas>

                  </div>
               </div>
      
        </div>
</div>
</div>
