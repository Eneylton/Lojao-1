<?php 

namespace App\Entidy;

use \App\Db\Database;

use \PDO;


class Funcionario{
    

    public $id;
    public $total_obra;
    public $total_servico;
    public $mecanicos_id;
    
    public function cadastar(){


        $obdataBase = new Database('caixa');  
        
        $this->id = $obdataBase->insert([
          
            'total_obra'                  => $this->total_obra, 
            'total_servico'               => $this->total_servico, 
            'mecanicos_id'                => $this->mecanicos_id 

        ]);

        return true;

    }

public static function getList($where = null, $order = null, $limit = null){

    return (new Database ('caixa'))->select($where,$order,$limit)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}

public static function getListFind($innerjoin = null,$where = null, $order = null, $limit = null){

    return (new Database ('produtos'))->listFind($innerjoin,$where,$order,$limit)
                                        ->fetchAll(PDO::FETCH_CLASS, self::class);

}

public static function getQtd($where = null){

    return (new Database ('caixa'))->select($where,null,null,'COUNT(*) as qtd')
                                   ->fetchObject()
                                   ->qtd;

}


public static function getID($id){
    return (new Database ('caixa'))->select('id = ' .$id)
                                   ->fetchObject(self::class);
 
}

public function atualizar(){
    return (new Database ('caixa'))->update('id = ' .$this-> id, [
        
        'total_obra'                  => $this->total_obra, 
        'total_servico'               => $this->total_servico, 
        'mecanicos_id'                => $this->mecanicos_id 

    ]);
  
}

public function excluir(){
    return (new Database ('caixa'))->delete('id = ' .$this->id);
  
}


public static function getEmail($foto){

    return (new Database ('caixa'))->select('foto = "'.$foto.'"')-> fetchObject(self::class);

}

public static function getPdf(){

    return (new Database ('caixa'))->pdf($where = null)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}


}