<?php

if (isset($_GET['status'])) {

   switch ($_GET['status']) {
      case 'success':
         $icon  = 'success';
         $title = 'Parabéns';
         $text = 'Cadastro realizado com Sucesso !!!';
         break;

         case 'del':
            $icon  = 'error';
            $title = 'Parabéns';
            $text = 'Esse usuário foi excluido !!!';
            break;

            case 'edit':
               $icon  = 'warning';
               $title = 'Parabéns';
               $text = 'Cadastro atualizado com sucesso !!!';
               break;
   

      default:
         $icon  = 'error';
         $title = 'Opss !!!';
         $text = 'Você ainda não produziu nada este mês  !!!';
         break;
   }

   function alerta($icon, $title, $text)
   {
      echo "<script type='text/javascript'>
      Swal.fire({
        type:'type',  
        icon: '$icon',
        title: '$title',
        text: '$text'
       
      }) 
      </script>";
   }

   alerta($icon, $title, $text);

}


$td = "";
$button = "";

$resultados = '';

$fabri = '';
foreach ($list as $item) {
   
   $id_mecanico = $item->id;

   if($id_mecanico == 13){
  
    $td = '<td style="display:none">' . $item->nome . '</td>';
    $button = '<button style="display:none" type="button" class="btn btn-primary"><i class="fa fa-address-card" aria-hidden="true"></i> &nbsp; PRODUÇÃO</button>';
  
   }else{

    $td = '<td style="text-transform:uppercase">' . $item->nome . '</td>';
    $button = '<button type="button" class="btn btn-primary"><i class="fa fa-address-card" aria-hidden="true"></i> &nbsp; PRODUÇÃO</button>';
   }
   
   $resultados .= '<tr>
                      <td style="display:none">' . $item->id . '</td>
                      '.$td.'
                      <td style="text-transform:uppercase">' . $item->telefone . '</td>
                     
                      <td style="text-align: center;">
                        
                
                       <a href="./mecanicos-edit.php?id=' . $item->id . '">
                       '.$button.'
                       </a>


                      </td>
                      </tr>

                      ';
}

$resultados = strlen($resultados) ? $resultados : '<tr>
                                                     <td colspan="4" class="text-center" > Nenhum funcionário Encontrada !!!!! </td>
                                                     </tr>';


unset($_GET['status']);
unset($_GET['pagina']);
$gets = http_build_query($_GET);

//PAGINAÇÂO

$paginacao = '';
$paginas = $pagination->getPages();

foreach ($paginas as $key => $pagina) {
   $class = $pagina['atual'] ? 'btn-primary' : 'btn-secondary';
   $paginacao .= '<a href="?pagina=' . $pagina['pagina'] . '&' . $gets . '">

                  <button type="button" class="btn ' . $class . '">' . $pagina['pagina'] . '</button>
                  </a>';
}

?>

<section class="content">
   <div class="container-fluid">
      <div class="row">
         <div class="col-12">
            <div class="card card-purple">
               <div class="card-header">

                  <form method="get">
                     <div class="row my-7">
                        <div class="col">

                           <label>Buscar por Narca</label>
                           <input type="text" class="form-control" name="buscar" value="<?= $buscar ?>" autofocus>

                        </div>


                        <div class="col d-flex align-items-end">
                           <button type="submit" class="btn btn-warning" name="">
                              <i class="fas fa-search"></i>

                              Pesquisar

                           </button>

                        </div>


                     </div>

                  </form>
               </div>
             
               <div class="table-responsive">

                  <table class="table table-bordered table-dark table-bordered table-hover table-striped">
                     <thead>
                     <tr>
                        <td colspan="3"> 
                        <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#modal-default"> <i class="fas fa-plus"></i> &nbsp; Nova</button>
                        </td>
                        </tr>
                        <tr>
                           <th> MECÂNICOS </th>
                           <th> TELEFONE </th>
                           <th style="text-align: center; width:200px"> AÇÃO </th>
                        </tr>
                     </thead>
                     <tbody>
                        <?= $resultados ?>
                     </tbody>

                  </table>

               </div>


            </div>

         </div>

      </div>

   </div>

</section>

<?= $paginacao ?>


<div class="modal fade" id="modal-default">
   <div class="modal-dialog">
      <div class="modal-content bg-gray">
         <form action="./marca-insert.php" method="post">

            <div class="modal-header">
               <h4 class="modal-title">Nova Marca
               </h4>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
            
               <div class="form-group">
                  <label>Fabricante</label>
                  <select class="form-control" name="telefone" required>
                     <option value=""> SELECIONE</option>
                     <option value="CHEVROLET "> CHEVROLET</option>
                     <option value="VOLKSWAGEN "> VOLKSWAGEN</option>
                     <option value="FIAT "> FIAT</option>
                     <option value="RENAULT "> RENAULT</option>
                     <option value="FORD "> FORD</option>
                     <option value="TOYOTA "> TOYOTA</option>
                     <option value="HYUNDAI "> HYUNDAI</option>
                     <option value="JEEP "> JEEP</option>
                     <option value="HONDA "> HONDA</option>
                     <option value="NISSAN "> NISSAN</option>
                     <option value="CITROËN "> CITROËN</option>
                     <option value="MITSUBISHI "> MITSUBISHI</option>
                     <option value="PEUGEOT "> PEUGEOT</option>
                     <option value="CHERY "> CHERY</option>
                     <option value="BMW "> BMW</option>
                     <option value="MERCEDES-BENZ "> MERCEDES</option>
                     <option value="KIA "> KIA</option>
                     <option value="AUDI"> AUDI</option>
                     <option value="VOLVO"> VOLVO</option>
                     <option value="LAND ROVER "> LAND</option>

                  </select>
               </div>

               <div class="form-group">
                  <label>Marca</label>
                  <input style="text-transform: uppercase;" type="text" class="form-control" name="nome" required autofocus>
               </div>

            </div>
            <div class="modal-footer justify-content-between">
               <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
               <button type="submit" class="btn btn-primary">Salvar</button>
            </div>

         </form>

      </div>
      <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
</div>

<!-- EDITAR -->

<div class="modal fade" id="editmodal">
   <div class="modal-dialog">
      <form action="./marca-edit.php" method="get">
         <div class="modal-content bg-gray">
            <div class="modal-header">
               <h4 class="modal-title">Editar Marca
               </h4>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <input type="hidden" name="id" id="id">
               <input type="hidden" name="telefone" id="telefone">
               <div class="form-group">
                  <label>Fabricante</label>
                  <input style="text-transform: uppercase;" type="text" class="form-control" id="fabri" disabled>
               </div>
               <div class="form-group">
                  <label>Marca</label>
                  <input style="text-transform: uppercase;" type="text" class="form-control" name="nome" id="nome" required>
               </div>
               
            </div>
            <div class="modal-footer justify-content-between">
               <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
               <button type="submit" class="btn btn-primary">Salvar
               </button>
            </div>
         </div>
      </form>
      <!-- /.modal-content -->
   </div>
   <!-- /.modal-dialog -->
</div>