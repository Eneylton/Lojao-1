<?php 

namespace App\Entidy;

use \App\Db\Database;

use \PDO;


class FormaPagamento{
    
    
    public $id;
    public $total_obra;
    
    public function cadastar(){

        $this-> data = date('Y-m-d H:i:s');

        $obdataBase = new Database('forma_pagamento');  
        
        $this->id = $obdataBase->insert([
          
            'total_obra'               => $this->total_obra, 
            'nome'            => $this->nome
        ]);

        return true;

    }

    public function atualizar(){
        return (new Database ('forma_pagamento'))->update('id = ' .$this-> id, [
    
                                                   
            'total_obra'               => $this->total_obra, 
            'nome'            => $this->nome
    
        ]);
      
    }

public static function getList($where = null, $order = null, $limit = null){

    return (new Database ('forma_pagamento'))->select($where,$order,$limit)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}



public static function getQtd($where = null){

    return (new Database ('forma_pagamento'))->select($where,null,null,'COUNT(*) as qtd')
                                   ->fetchObject()
                                   ->qtd;

}


public static function getID($id){
    return (new Database ('forma_pagamento'))->select('id = ' .$id)
                                   ->fetchObject(self::class);
 
}



public function excluir(){
    return (new Database ('forma_pagamento'))->delete('id = ' .$this->id);
  
}




}