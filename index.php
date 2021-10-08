<?php

require __DIR__ . '/vendor/autoload.php';

use App\Entidy\Caixa;
use App\Entidy\Ordem;
use App\Entidy\Produto;
use App\Session\Login;

define('TITLE', 'Painel de controle');
define('BRAND', 'Painel de controle ');

$valor_s = 0;
$valor_m = 0;
$sub_mao = 0;

$listar = Produto :: getRelacinadas();
$list_Totalserv = Ordem :: getServTodos();
$list_mao  = Caixa :: getmaobraTodos();

Login::requireLogin();

include __DIR__ . '/includes/dashboard/header.php';
include __DIR__ . '/includes/dashboard/top.php';
include __DIR__ . '/includes/dashboard/menu.php';
include __DIR__ . '/includes/dashboard/content.php';
include __DIR__ . '/includes/dashboard/box-infor.php';
include __DIR__ . '/includes/dashboard/footer.php';


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
<script type="text/javascript">
var ctx = document.getElementById('myChart2').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'pie',
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