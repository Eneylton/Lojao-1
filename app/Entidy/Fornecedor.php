<?php 

namespace App\Entidy;

use \App\Db\Database;

use \PDO;


class Fornecedor{
    

    public $id;

    public $nome;

    public $cnpj;

    public $telefone;

    public $email;

    public $foto;

    
    public function cadastar(){


        $obdataBase = new Database('fornecedores');  
        
        $this->id = $obdataBase->insert([
          
            'cnpj'          => $this->cnpj, 
            'telefone'      => $this->telefone, 
            'email'         => $this->email, 
            'nome'          => $this->nome, 
            'foto'          => $this->foto 

        ]);

        return true;

    }

public static function getList($where = null, $order = null, $limit = null){

    return (new Database ('fornecedores'))->select($where,$order,$limit)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}

public static function getQtd($where = null){

    return (new Database ('fornecedores'))->select($where,null,null,'COUNT(*) as qtd')
                                   ->fetchObject()
                                   ->qtd;

}


public static function getID($id){
    return (new Database ('fornecedores'))->select('id = ' .$id)
                                   ->fetchObject(self::class);
 
}

public function atualizar(){
    return (new Database ('fornecedores'))->update('id = ' .$this-> id, [

        'cnpj'          => $this->cnpj, 
        'telefone'      => $this->telefone, 
        'email'         => $this->email, 
        'nome'          => $this->nome, 
        'foto'          => $this->foto
    ]);
  
}

public function excluir(){
    return (new Database ('fornecedores'))->delete('id = ' .$this->id);
  
}


public static function getEmail($foto){

    return (new Database ('fornecedores'))->select('foto = "'.$foto.'"')-> fetchObject(self::class);

}

public static function getPdf(){

    return (new Database ('fornecedores'))->pdf($where = null)
                                   ->fetchAll(PDO::FETCH_CLASS, self::class);

}


}