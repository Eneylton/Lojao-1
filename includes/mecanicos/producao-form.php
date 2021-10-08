<?php


$sub = 0;
$sub_m = 0;
$valor = 0;
$valor_m = 0;
$soma = 0;

$resultados = '';

$resultados_m = '';

foreach ($list_serv as $item) { 

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

   $resultados .= '<tr>
                     
                      <td style="text-transform:uppercase;text-align:left;">' . $item->id . '</td>
                      <td style="text-transform:uppercase; text-align:left"> <h5><span class="badge badge-pill badge-danger">' . $item->servicos  . '</span></h5> </td>
                      <td style="text-align: left;">R$ '. number_format($valor,"2",",",".") .'</td>
                      </tr>

                      ';
}

$resultados = strlen($resultados) ? $resultados : '<tr>
                                                     <td colspan="3" class="text-center" > Nenhum Mecânico cadastrado cadastrado !!!!! </td>
                                                     </tr>';


foreach ($list_mao as $item) {

   $valor_m = $item->t_maobra * (10 / 100);

   $sub_m += $valor_m;

   $resultados_m .= '<tr>
                     
   <td style="text-transform:uppercase;text-align:left;">' . $item->id . '</td>
   <td style="text-transform:uppercase; text-align:left"> <h5><span class="badge badge-pill badge-success">' 
   . date('d/m/Y À\S H:i:s', strtotime($item->data))   . '</span></h5> </td>
   <td style="text-align: left;">R$ '. number_format($valor_m,"2",",",".") .'</td>
   </tr>

   ';
}

$resultados = strlen($resultados) ? $resultados : '<tr>
                                  <td colspan="3" class="text-center" > Nenhum Mecânico cadastrado cadastrado !!!!! </td>
                                  </tr>';
   
$soma = $sub + $sub_m;

?>

<div class="row">
  <div class="col-md-6">
  <div class="card card-widget widget-user">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="widget-user-header bg-info">
                <h3 class="widget-user-username"><?= $mecanico ?></h3>
                <h5 class="widget-user-desc">MECÂNICO</h5>
              </div>
              <div class="widget-user-image">
                <img class="img-circle elevation-2" src="../../imgs/mec.jpg" alt="User Avatar">
              </div>
              <div class="card-footer">
                <div class="row">
                <div class="col-sm-4 border-right">
                    <div class="description-block">
                      <h5 class="description-header"> R$ &nbsp; <?= number_format($sub,"2",",",".") ?></h5>
                      <span class="description-text">TOTAL SERVIÇOS MENSAL</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-4 border-right">
                    <div class="description-block">
                      <h5 class="description-header">R$ &nbsp; <?= number_format($porcent_maobra,"2",",",".") ?></h5>
                      <span class="description-text">TOTAL MÃO DE OBRA</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-4">
                    <div class="description-block">
                    <h5 class="description-header">R$ &nbsp; <?= number_format($soma,"2",",",".") ?></h5>
                      <span class="description-text">CARTEIRA</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
            </div>
  </div>

  <div class="col-md-6">

  <div class="card-body">
                  <div class="d-flex">
                     <p class="d-flex flex-column">
                        <span class="text-bold text-lg">R$ &nbsp; <?= number_format($soma,"2",",",".") ?></span>
                        <span>Acumulado no mês</span>
                     </p>
                     <p class="ml-auto d-flex flex-column text-right">
                        <span class="text-success">
                           <i class="fas fa-arrow-up"></i> &nbsp; R$ <?= number_format($soma,"2",",",".") ?>
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
</div>

<div class="row">
  <div class="col-md-6">
  <div class="card">
               <div class="card-header border-0">
                  <div class="d-flex justify-content-between">
                     <h3 class="card-title">PRODUÇÃO MENSAL</h3>
                     <a href="gerarProducao-pdf.php?id=<?php echo $mecanico_id; ?>" target="blanck">RELATÓRIO</a>
                  </div>
               </div>
                  <div class="card-body">

                     <table class="table">
                        <thead>
                           <tr>
                              <th>CÓDIGO</th>
                              <th>MECÂNICO</th>
                              <th>VALOR</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <?= $resultados ?>
                           </tr> 
                           <tr>
                             <td colspan="2" style="text-align: right;">
                             TOTAL
                             </td>
                             <td colspan="2">
                             R$ &nbsp; <?= number_format($sub,"2",",",".") ?>
                             </td>
                           </tr> 
                        
                        </tbody>
                     </table>
                  </div>

                  <div class="d-flex flex-row justify-content-end">
                     <span class="mr-2">
                        <i class="fas fa-square text-primary"></i> Data 
                     </span>

                     <span>
                        <i class="fas fa-square text-gray"></i> <?= date('d/m/Y') ?>
                     </span>
                  </div>
              
            </div>
  </div>
  
  <div class="col-md-6">
 
  <div class="card">
               <div class="card-header border-0">
                  <div class="d-flex justify-content-between">
                     <h3 class="card-title">PRODUÇÃO MÃO DE OBRA</h3>
                     <a href="gerarMaoObra-pdf.php?id=<?php echo $mecanico_id; ?>" target="blanck">RELATÓRIO</a>
                  </div>
               </div>
                  <div class="card-body">

                     <table class="table">
                        <thead>
                           <tr>
                              <th>CÓDIGO</th>
                              <th>DATA SERVIÇOS</th>
                              <th>VALOR</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <?= $resultados_m ?>
                           </tr>

                           <tr>
                             <td colspan="2" style="text-align: right;">
                             TOTAL
                             </td>
                             <td colspan="2">
                             R$ &nbsp; <?= number_format($sub_m,"2",",",".") ?>
                             </td>
                           </tr> 
                          
                        
                        </tbody>
                     </table>
                  </div>

                  <div class="d-flex flex-row justify-content-end">
                     <span class="mr-2">
                        <i class="fas fa-square text-primary"></i> Data 
                     </span>

                     <span>
                        <i class="fas fa-square text-gray"></i> <?= date('d/m/Y') ?>
                     </span>
                  </div>
              
            </div>
               
  </div>
  </div>
</div>