<?php 

require __DIR__.'../../../vendor/autoload.php';

use App\Entidy\Caixa;
use App\Entidy\Ordem;
use    App\Entidy\Servico;
use   \App\Session\Login;

Login::requireLogin();


$usuariologado = Login:: getUsuarioLogado();

$usuarios_id = $usuariologado['id'];


$_SESSION['dados-serv'] = array();

if (isset($_POST['clientes_id'])) {
              
    if (isset($_POST['serv'])) {
      $total = 0;
      $total_serv = 0;
      foreach ($_POST['serv'] as $id) {
        
        $servicos = Servico::getID($id);
        
        $valor_serv = $servicos->valor;
        
        $item = new Ordem;
        
        $v1        = $_POST['mao_obra'];
        $v2        = str_replace(".", "", $v1);
        $obra      = str_replace(",", ".",  $v2);
        $cliente   = $_POST['clientes_id'];
        $mecanico  = $_POST['mecanicos_id'];
      
        $item->clientes_id = $_POST['clientes_id'];    
        $item->mecanicos_id = $_POST['mecanicos_id'];    
        $item->servicos_id = $id;
            
        $item->mao_obra = $_POST['mao_obra'];    
        $item->obs = $_POST['obs']; 
        $item->status = 0;   
        $item->cadastar();
        
        $total_serv += $valor_serv;
      }
       
        $total = $total_serv + $obra;

        $caixa = new Caixa;
        $caixa->total_obra     = $obra; 
        $caixa->total_servico  = $total_serv; 
        $caixa->usuarios_id    = $usuarios_id;   
        $caixa->clientes_id    = $_POST['clientes_id'];    
        $caixa->mecanicos_id   = $_POST['mecanicos_id'];   
        $caixa->cadastar();


      array_push(

        $_SESSION['dados-serv'],

        array(
          'cliente'           => $cliente,
          'mecanico'          => $mecanico,
          'obra'              => $obra,
          'servico'           => $total_serv,
          'total'             => $total
        )
    );
    
    }
}

header('location: venda-insert.php?status=error');

exit;