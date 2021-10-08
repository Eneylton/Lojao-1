<?php

require __DIR__ . '../../../vendor/autoload.php';

$alertaCadastro = '';

define('TITLE', 'Produção');
define('BRAND', 'Estatísticas');

use App\Entidy\Caixa;
use App\Entidy\Mecanico;
use \App\Entidy\Ordem;
use  \App\Session\Login;


Login::requireLogin();

$sub = 0;
$sub_mao = 0;
$sub_s = 0;

$mecanico_id = $_GET['id'];

$mecanico = Mecanico :: getID($mecanico_id);

$item  = Ordem::getTotalSertviceID($_GET['id']);
$item3 = Ordem::getTotalSertviceMesID($_GET['id']);
$item2 = Ordem::getMecanicoID($_GET['id']);
$list_servico = Ordem::getMecanServID($_GET['id']);
$list_serv = Ordem :: getMecanServID($_GET['id']);
$list_Totalserv = Ordem :: getServID($_GET['id']);
$list_mao  = Caixa :: getmaobraID($_GET['id']);

if($item2 == false){

    header('location: mecanicos-list.php?status=error');

    exit;
}



$total_service      = $item->total;
$total_maobra       = $item->mao_obra;
$mecanico           = $item2->mecanico;

$total_mes          = $item3->total;
$total_mes_obra     = $item3->mao_obra;

$porcent_service = $total_mes * (10 / 100);
$porcent_maobra  = $total_mes_obra * (10 / 100);
$soma = ($porcent_service + $porcent_maobra);

if (!$item instanceof Ordem) {

    header('location: index.php?status=error');

    exit;
}

        if (isset($_GET['nome'])) {

            $item->nome = $_GET['nome'];
            $item->fabricante = $_GET['fabricante'];
            $item->atualizar();

            header('location: marca-list.php?status=success');

            exit;


        
    }


     

include __DIR__ . '../../../includes/layout/header.php';
include __DIR__ . '../../../includes/layout/top.php';
include __DIR__ . '../../../includes/layout/menu.php';
include __DIR__ . '../../../includes/layout/content.php';
include __DIR__ . '../../../includes/mecanicos/producao-form.php';
include __DIR__ . '../../../includes/layout/footer.php';


?>


<script type="text/javascript">
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: [

            <?php
           
            foreach ($list_mao as $item) {
           
                echo "'".date('d / M', strtotime($item->data))."',";
            }
             
            ?>
        ]
        ,
        datasets: [{
            label: '• MÃO DE OBRA •',
            data: [
                <?php
                
                foreach ($list_mao as $item) {

                    $valor_m = $item->t_maobra * (10 / 100);
                 
                    $sub_mao += $valor_m;
                    
                    echo "'".$valor_m."',";
                }
            
            
             
            ?>
            ],
            backgroundColor: [
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8'
            ],
            borderColor: [
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8',
                '#6fe633a8'
               
             
            ],
           
            borderWidth: 1
        },
        {
            label: '• SERVIÇOS •',
            data: [
                <?php
                
                foreach ($list_Totalserv as $item) {

                    switch ($item->servicos_id) {
                        case '1':
                        $valor_s = $item->valor * (10 / 100);
                        break;
                  
                        case '2':
                        $valor_s = $item->valor * (10 / 100);
                        break;
                  
                        case '3':
                        $valor_s = $item->valor * (10 / 100);
                        break;
                  
                        case '4':
                        $valor_s = $item->valor * (50 / 100);
                        break;
                  
                        case '6':
                           $valor_s = $item->valor * (10 / 100);
                           break;
                  
                        case '7':
                        $valor_s = $item->valor * (10 / 100);
                        break;
                  
                        case '9':
                        $valor_s = $item->valor * (10 / 100);
                        break; 
                        
                        case '10':
                           $valor_s = $item->valor * (10 / 100);
                           break;
                  
                        default:
                           $valor_s = $item->valor * (50 / 100);
                           break;
                        }
                    
                    echo "'".$valor_s."',";
                }
            
            
             
            ?>
            ],
            backgroundColor: [
               
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216'
            ],
            borderColor: [
             
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216',
                '#ff8216'
             
            ],
           
            borderWidth: 1
        }]
    },
    
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
});
</script>