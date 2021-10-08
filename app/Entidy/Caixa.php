<?php 

namespace App\Entidy;

use \App\Db\Database;

use \PDO;


class Caixa{
    
    
    public $id;
    public $total_obra;
    public $total_servico;
    public $usuarios_id;
    public $clientes_id;
    public $mecanicos_id;
    
    
    public function cadastar(){

        $this-> data = date('Y-m-d H:i:s');

        $obdataBase = new Database('caixa');  
        
        $this->id = $obdataBase->insert([
          
            'total_obra'               => $this->total_obra, 
            'total_servico'            => $this->total_servico, 
            'usuarios_id'              => $this->usuarios_id, 
            'clientes_id'              => $this->clientes_id, 
            'mecanicos_id'             => $this->mecanicos_id
        ]);

        return true;

    }

    public function atualizar(){
        return (new Database ('caixa'))->update('id = ' .$this-> id, [
    
                                                   
            'total_obra'               => $this->total_obra, 
            'total_servico'            => $this->total_servico, 
            'usuarios_id'              => $this->usuarios_id, 
            'clientes_id'              => $this->clientes_id, 
            'mecanicos_id'             => $this->mecanicos_id
    
        ]);
      
    }

public static function getList($where = null, $order = null, $limit = null){

    return (new Database ('caixa'))->select($where,$order,$limit)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}

public static function getListProducao($where = null, $order = null, $limit = null){

    return (new Database ('caixa'))->selectProducao($where,$order,$limit)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}


public static function getObraDiaria($where = null, $order = null, $limit = null){

    return (new Database ('caixa'))->obraDiaria($where,$order,$limit)
    ->fetchObject(self::class);

}

public static function getObraMes($where = null, $order = null, $limit = null){

    return (new Database ('caixa'))->obraDiaria($where,$order,$limit)
    ->fetchObject(self::class);

}



public static function getReceber($where = null, $order = null, $limit = null){

    return (new Database ('caixa'))->receber($where,$order,$limit)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}

public static function getUsuarios($where = null, $order = null, $limit = null){

    return (new Database ('usuarios'))->select($where,$order,$limit)
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

public static function getITem($id){
    return (new Database ('caixa'))->select('produtos_id = ' .$id)
                                   ->fetchObject(self::class);
 
}


public static function getmaobraID($id){
    return (new Database ('caixa'))->selectMaobra('c.mecanicos_id  = ' .$id)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);
 
}

public static function getmaobraTodos($where = null){
    return (new Database ('caixa'))->selectMaobraTodos($where,null,null,null)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);
 
}


public function excluir(){
    return (new Database ('caixa'))->delete('id = ' .$this->id);
  
}




}