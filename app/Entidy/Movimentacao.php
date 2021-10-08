<?php

namespace App\Entidy;

use \App\Db\Database;

use \PDO;


class Movimentacao
{


    public $id;

    public $data;

    public $valor;

    public $forma_pagamento_id;

    public $tipo;

    public $status;

    public $descricao;

    public $usuarios_id;

    public $catdesp_id;

    public $mecanicos_id;



    public function cadastar()
    {


        $obdataBase = new Database('movimentacoes');

        $this->id = $obdataBase->insert([

            'valor'                 => $this->valor,
            'forma_pagamento_id'    => $this->forma_pagamento_id,
            'tipo'                  => $this->tipo,
            'status'                => $this->status,
            'descricao'             => $this->descricao,
            'usuarios_id'           => $this->usuarios_id,
            'mecanicos_id'          => $this->mecanicos_id,
            'catdesp_id'            => $this->catdesp_id

        ]);

        return true;
    }

    public static function getList($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->select($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }

    public static function getListMov($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->innerjoinMov($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }
    public static function getMovimentacaoDiaria($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->movimentacaoDiaria($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }

    public static function getData($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->consultaData($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }



    public static function getContasPagar($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->contasPagar($where, $order, $limit)
        ->fetchObject(self::class);
    }

    public static function getContasReceber($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->contasReceber($where, $order, $limit)
        ->fetchObject(self::class);
    }


    public static function getDespesasDiarias($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->despesasDiarias($where, $order, $limit)
        ->fetchObject(self::class);
    }


    public static function getDespesasMensal($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->despesasMensal($where, $order, $limit)
        ->fetchObject(self::class);
    }

    public static function getServicosMensal($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->servicosMensal($where, $order, $limit)
        ->fetchObject(self::class);
    }



    public static function getListMovDia($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->movDia($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }

    public static function getListMovMes($where = null, $order = null, $limit = null)
    {

        return (new Database('movimentacoes'))->movMes($where, $order, $limit)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }


    public static function getQtdMov($where = null)
    {

        return (new Database('movimentacoes'))->qtdmov($where, null, null, 'COUNT(*) as qtd')
            ->fetchObject()
            ->qtd;
    }


    public static function getQtd($where = null)
    {

        return (new Database('movimentacoes'))->select($where, null, null, 'COUNT(*) as qtd')
            ->fetchObject()
            ->qtd;
    }


    public static function getID($id)
    {
        return (new Database('movimentacoes'))->select('id = ' . $id)
            ->fetchObject(self::class);
    }

    public function atualizar()
    {
        return (new Database('movimentacoes'))->update('id = ' . $this->id, [


            'valor'                 => $this->valor,
            'forma_pagamento_id'    => $this->forma_pagamento_id,
            'tipo'                  => $this->tipo,
            'status'                => $this->status,
            'descricao'             => $this->descricao,
            'usuario_id'            => $this->usuario_id,
            'catdesp_id'            => $this->catdesp_id
        ]);
    }

    public function atualizarstatus()
    {
        return (new Database('movimentacoes'))->update('id = ' . $this->id, [
            'valor'                 => $this->valor,
            'forma_pagamento_id'    => $this->forma_pagamento_id,
            'status'                => $this->status,
            'data'                  => $this->data
        ]);
    }


    public function excluir()
    {
        return (new Database('movimentacoes'))->delete('id = ' . $this->id);
    }


    public static function getEmail($forma_pagamento_id)
    {

        return (new Database('movimentacoes'))->select('forma_pagamento_id = "' . $forma_pagamento_id . '"')->fetchObject(self::class);
    }

    public static function getPdf()
    {

        return (new Database('movimentacoes'))->pdf($where = null)
            ->fetchAll(PDO::FETCH_CLASS, self::class);
    }
}
