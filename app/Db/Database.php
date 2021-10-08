<?php

namespace App\Db;

use \PDO;
use \PDOException;

class Database
{

    const HOST = 'localhost';
    const NAME = 'db_plataforma_lojao';
    const USER = 'root';
    const PASS = '';


    private $table;

    /**
     * @var PDO
     */
    private $connection;


    public function __construct($table = null)
    {

        $this->table = $table;
        $this->setConnection();
    }

    private function setConnection()
    {

        try {
            $this->connection = new PDO('mysql:host=' . self::HOST . ';dbname=' . self::NAME, self::USER, self::PASS);
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {

            die('ERROR: ' . $e->getMessage());
        }
    }


/**
 * @param string
 * @param array
 * @return PDOStatement
 */

    public function execute($query, $params = [])
    {

        try {
            $statement = $this->connection->prepare($query);
            $statement->execute($params);
            return $statement;
        } catch (PDOException $e) {

            die('ERROR: ' . $e->getMessage());
        }
    }

    public function selectTotalService($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT sum( s.valor) as total,sum(os.mao_obra) as mao_obra
        FROM
        ordem_servicos AS os
            INNER JOIN
        mecanicos AS m ON (os.mecanicos_id = m.id)
            INNER JOIN
        servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' AND os.data >= current_date() ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectTotalServiceMes($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT sum( s.valor) as total,sum(os.mao_obra) as mao_obra
        FROM
        ordem_servicos AS os
            INNER JOIN
        mecanicos AS m ON (os.mecanicos_id = m.id)
            INNER JOIN
        servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' AND month(os.data) ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectMaoObra($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT sum( s.valor) as total
    FROM
    ordem_servicos AS os
        INNER JOIN
    mecanicos AS m ON (os.mecanicos_id = m.id)
        INNER JOIN
    servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' AND month(os.data) ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectMecanico($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

            $query = 'SELECT m.nome as mecanico
            FROM
            ordem_servicos AS os
            INNER JOIN
            mecanicos AS m ON (os.mecanicos_id = m.id)
            INNER JOIN
            servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' ' . $order . ' ' . $limit;

            return $this->execute($query);
    }

    public function selectServMec($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

            $query = 'SELECT 
            s.valor AS total_servico, 
            os.mao_obra AS total_maobra,
            os.servicos_id AS servicos_id
        FROM
            ordem_servicos AS os
                INNER JOIN
            mecanicos AS m ON (os.mecanicos_id = m.id)
                INNER JOIN
            servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' ' . $order . ' ' . $limit;

            return $this->execute($query);
    }

    public function selectServID($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

                $query = 'SELECT 
                DATE_FORMAT(os.data, "%Y-%m-%d") AS data,
                SUM(s.valor) AS valor,s.id as servicos_id
                FROM
                ordem_servicos AS os
                INNER JOIN
                servicos AS s ON (os.servicos_id = s.id)
                INNER JOIN
                mecanicos AS m ON (os.mecanicos_id = m.id)

            ' . $where . ' GROUP BY os.data ' . $order . ' ' . $limit;

            return $this->execute($query);
    }

 
    public function selectServMecID($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

            $query = 'SELECT 
            os.id,
            os.data as data,
            s.nome as servicos,
            os.mao_obra AS total_maobra,
            s.valor AS total_servico, 
            os.servicos_id AS servicos_id,
            sum(s.valor) as valor 
        FROM
            ordem_servicos AS os
                INNER JOIN
            mecanicos AS m ON (os.mecanicos_id = m.id)
                INNER JOIN
            servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' group by s.nome ' . $order . ' ' . $limit;

            return $this->execute($query);
    }


    public function selectServMecMesID($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

            $query = 'SELECT 
            os.id,
            os.data as data,
            s.nome as servicos,
            os.mao_obra AS total_maobra,
            s.valor AS total_servico, 
            os.servicos_id AS servicos_id,
            s.valor as valor 
        FROM
            ordem_servicos AS os
                INNER JOIN
            mecanicos AS m ON (os.mecanicos_id = m.id)
                INNER JOIN
            servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' AND MONTH(os.data) ' . $order . ' ' . $limit;

            return $this->execute($query);
    }


    public function selectServTodos($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

            $query = 'SELECT 
            os.id,
            os.data as data,
            s.nome as servicos,
            os.mao_obra AS total_maobra,
            s.valor AS total_servico, 
            os.servicos_id AS servicos_id,
            sum(s.valor) as valor 
        FROM
            ordem_servicos AS os
                INNER JOIN
            mecanicos AS m ON (os.mecanicos_id = m.id)
                INNER JOIN
            servicos AS s ON (os.servicos_id = s.id)
            
            ' . $where . ' AND MONTH(os.data) ' . $order . ' ' . $limit;

            return $this->execute($query);
    }

    public function selectServMaoID($where = null, $order = null, $limit = null, $fields = '*')
    {

            $where = strlen($where) ? 'WHERE ' . $where : '';
            $order = strlen($order) ? 'ORDER BY ' . $order : '';
            $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

            $query = 'SELECT 
            os.id,
            s.nome as servicos,
            os.mao_obra AS total_maobra,
             s.valor AS total_servico, 
            os.servicos_id AS servicos_id,
            sum(s.valor) as valor 
        FROM
            ordem_servicos AS os
                INNER JOIN
            mecanicos AS m ON (os.mecanicos_id = m.id)
                INNER JOIN
            servicos AS s ON (os.servicos_id = s.id)
            ' . $where . ' group by s.nome ' . $order . ' ' . $limit;

            return $this->execute($query);
    }



    public function selectCategoria($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


            $query = 'SELECT 
            et.id as id,
            et.data as data,
            et.cod_id as cod_id, 
            oc.nome as nome,
            oc.valor_venda as valor,
            oc.produtos_id as produtos_id,
            oc.qtd as qtd,
            oc.subtotal as subtotal,
            mc.nome as mecanico,
            cli.nome as cliente,
            cat.nome as categoria
        FROM
             entregas AS et
            INNER JOIN orcamentos AS oc
            ON (et.cod_id = oc.cod_id)
            INNER JOIN
            clientes AS cli ON (cli.id = oc.clientes_id) 
            INNER JOIN
            mecanicos AS mc ON (mc.id = oc.mecanicos_id)
            INNER JOIN
            produtos AS pd ON (pd.id = oc.produtos_id)
            INNER JOIN
            categorias AS cat ON (pd.categorias_id = cat.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function receber2($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


            $query = 'SELECT 
            et.id as id,
            et.data as data,
            et.cod_id as cod_id, 
            oc.nome as nome,
            oc.valor_venda as valor,
            oc.produtos_id as produtos_id,
            oc.qtd as qtd,
            oc.subtotal as subtotal,
            mc.nome as mecanico,
            cli.nome as cliente,
            cat.nome as categoria
        FROM
             entregas AS et
            INNER JOIN orcamentos AS oc
            ON (et.cod_id = oc.cod_id)
            INNER JOIN
            clientes AS cli ON (cli.id = oc.clientes_id) 
            INNER JOIN
            mecanicos AS mc ON (mc.id = oc.mecanicos_id)
            INNER JOIN
            produtos AS pd ON (pd.id = oc.produtos_id)
            INNER JOIN
            categorias AS cat ON (pd.categorias_id = cat.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function listFind($fields = null, $innerjoin = null,$where = null, $order = null, $limit = null )
    {

        $innerjoin = strlen($innerjoin) ? 'INNER JOIN ' . $innerjoin : '';
        $where =     strlen($where) ?     'WHERE ' . $where : '';
        $order =     strlen($order) ?     'ORDER BY ' . $order : '';
        $limit =     strlen($limit) ?     'LIMIT ' . $limit : '';

        $query = 'SELECT ' . $fields . ' FROM ' . $this->table . ' as x ' . $innerjoin . '  ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function select($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT ' . $fields . ' FROM ' . $this->table . ' ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function vendaDiaria($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

                    $query = 'SELECT 
                    o.data AS data, SUM(o.subtotal) AS total
                    FROM
                    orcamentos as o
                    WHERE
                    o.data >= CURRENT_DATE()
                    ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function vendaDinheiro($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

                    $query = 'SELECT 
                    o.data AS data, SUM(o.subtotal) AS total
                    FROM
                    orcamentos as o inner join forma_pagamento  as f ON (o.forma_pagamento_id = f.id)
                    ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function obraDiaria($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'as p WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

                    $query = 'SELECT sum(c.total_obra) as total FROM caixa as c Where c.data >= current_date()
                    ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function obraMes($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'as p WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

                    $query = 'SELECT sum(c.total_obra) as total FROM caixa as c Where month(c.data)
                    ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function vendaMes($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'as p WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

                    $query = 'SELECT 
                    o.data AS data, SUM(o.subtotal) AS total
                    FROM
                    orcamentos as o
                    WHERE MONTH(o.data)
                    ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function qtdPedidos($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT ' . $fields . '
        
                    FROM
                    entregas AS et
                    INNER JOIN orcamentos AS oc
                    ON (et.cod_id = oc.cod_id)
                    INNER JOIN
                    clientes AS cli ON (cli.id = oc.clientes_id) 
                    INNER JOIN
                    mecanicos AS mc ON (mc.id = oc.mecanicos_id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function selectTotal($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT count(e.status) as total FROM entregas as e Where e.status = 1 group by e.status
    
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function selectPedidos($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        et.id as id,
        et.status as status,
        et.cod_id as codigo,
        et.data as data,
        cli.nome as cliente,
        mc.nome as mecanico
    FROM
         entregas AS et
            INNER JOIN orcamentos AS oc
        ON (et.cod_id = oc.cod_id)
        INNER JOIN
        clientes AS cli ON (cli.id = oc.clientes_id) 
        INNER JOIN
        mecanicos AS mc ON (mc.id = oc.mecanicos_id) group by et.cod_id
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectProducao($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        v.data,
        m.nome as mecanico,
        sum(v.subtotal) as total
        FROM
        vendas AS v
        INNER JOIN
        mecanicos AS m ON (v.mecanicos_id = m.id) group by m.nome
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectMaobra($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        c.id AS id, c.data AS data, SUM(c.total_obra) AS t_maobra
                  FROM
                  caixa AS c
            ' . $where . ' GROUP BY c.data ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectMaobraTodos($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        c.id AS id, c.data AS data, sum(c.total_obra) as t_maobra
                  FROM
                  caixa AS c
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function rank()
    {

        $query = 'SELECT 
        e.nome AS nome, COUNT(e.produtos_id) AS contagem
                  FROM estatisticas AS e GROUP BY e.nome order by contagem DESC LIMIT 10';

        return $this->execute($query);
    }

    public function despesas()
    {

        $query = 'SELECT sum(e.subtotal) as total FROM estatisticas as e ';

        return $this->execute($query);
    }

    public function receitas()
    {

        $query = 'SELECT sum(v.subtotal) as total FROM vendas as v ';

        return $this->execute($query);
    }


    public function receber($where = null, $order = null, $limit = null, $fields = '*')
    {

        $where = strlen($where) ? 'AND ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT ' . $fields . ' FROM ' . $this->table . ' as p WHERE p.status = 1 ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function qtdmov($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT ' . $fields . '
        
        FROM
        movimentacoes AS m
        INNER JOIN
        catdespesas AS c ON (m.catdesp_id = c.id)
        INNER JOIN
        forma_pagamento AS f ON (m.forma_pagamento_id = f.id)
        INNER JOIN
        usuarios AS u ON (m.usuarios_id = u.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function qtd($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT ' . $fields . '
        
    FROM
        produtos AS p
            INNER JOIN
            categorias AS c ON (p.categorias_id = c.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function qtdCli($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT ' . $fields . '
        
        FROM
        clientes AS c
        INNER JOIN
        marcas AS m ON (c.marcas_id = m.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }
    

    public function clientemarcaid($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT  
        c.id AS id,
        c.nome AS nome,
        c.telefone AS telefone,
        c.email AS email,
        c.placa AS placa,
        c.marcas_id AS marcas_id,
        m.nome AS marca,
        m.fabricante AS fabricante
        FROM
        clientes AS c
        INNER JOIN
        marcas AS m ON (c.marcas_id = m.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }
    public function CliMarca($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';

        $query = 'SELECT  
        c.id AS id,
        c.nome AS nome,
        c.telefone AS telefone,
        c.email AS email,
        c.placa AS placa,
        c.marcas_id AS marcas_id,
        m.nome AS marca,
        m.fabricante AS fabricante
        FROM
        clientes AS c
        INNER JOIN
        marcas AS m ON (c.marcas_id = m.id)
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function qtdBaixo($where = null, $order = null, $limit = null, $fields = '*')
    {
        $where = strlen($where) ? ' AND ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT ' . $fields . '
        
    FROM
        produtos AS p
            INNER JOIN
            categorias AS c ON (p.categorias_id = c.id) WHERE p.estoque <= 3
            ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function relacionadas($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        p.id as id,
        p.codigo as codigo,
        p.barra as barra,
        p.data as data,
        p.nome as nome,
        p.foto as foto,
        p.estoque as estoque,
        p.aplicacao as aplicacao,
        p.categorias_id as categorias_id,
        p.valor_compra as valor_compra,
        p.valor_venda as valor_venda,
        c.nome as categoria
        
    FROM
        produtos AS p
            INNER JOIN
        categorias AS c ON (p.categorias_id = c.id)
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function selectService($where, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        os.id As id,
        s.nome AS nome, 
        os.obs AS obs,
        s.valor AS valor
        FROM
        ordem_servicos AS os
        INNER JOIN
        servicos AS s ON (os.servicos_id = s.id)
        '. $where. ' AND os.status = 0 ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function selectService2($where, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        os.id  AS id,
        s.nome AS nome, 
        os.obs AS obs,
        s.valor AS valor
        FROM
        ordem_servicos AS os
        INNER JOIN
        servicos AS s ON (os.servicos_id = s.id)
        '. $where. ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function innerjoin($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        c.id as id,
        c.nome as nome,
        c.telefone as telefone,
        c.email as email,
        c.placa as placa,
        m.nome as marca
        
        FROM
        
        clientes AS c
        INNER JOIN
        marcas AS m ON (c.marcas_id = m.id)
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function innerjoinMov($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        m.id as id,
        m.data AS data,
        m.valor AS valor,
        m.forma_pagamento_id AS forma_pagamento_id,
        m.descricao as descricao,
        m.tipo as tipo,
        m.status as status,
        f.nome as pagamento,
        c.nome as categoria,
        mec.nome as mecanicos

      FROM
      
      movimentacoes AS m
      INNER JOIN
      catdespesas AS c ON (m.catdesp_id = c.id)
      INNER JOIN
      forma_pagamento AS f ON (m.forma_pagamento_id = f.id)
      INNER JOIN
      mecanicos AS mec ON (m.mecanicos_id = mec.id) WHERE m.data >= current_date()
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function consultaData($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        m.id as id,
        m.data AS data,
        m.valor AS valor,
        m.forma_pagamento_id AS forma_pagamento_id,
        m.descricao as descricao,
        m.tipo as tipo,
        m.status as status,
        f.nome as pagamento,
        c.nome as categoria,
        mec.nome as mecanicos

      FROM
      
      movimentacoes AS m
      INNER JOIN
      catdespesas AS c ON (m.catdesp_id = c.id)
      INNER JOIN
      forma_pagamento AS f ON (m.forma_pagamento_id = f.id)
      INNER JOIN
      mecanicos AS mec ON (m.mecanicos_id = mec.id) 
        ' . $where . ' ' . $order . ' ' . $limit;

      return $this->execute($query);
    }



    public function contasPagar($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT sum(m.valor) as total FROM movimentacoes as m Where m.tipo = 0 AND m.status = 0
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function contasReceber($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT sum(m.valor) as total FROM movimentacoes as m Where m.tipo = 1 AND m.status = 0
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function despesasDiarias($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT sum(m.valor) as total FROM movimentacoes as m Where m.tipo = 0 AND m.status = 1 AND m.data >= current_date() 
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function despesasMensal($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT sum(m.valor) as total FROM movimentacoes as m Where m.tipo = 0 AND m.status = 1 AND MONTH(m.data)
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function servicosMensal($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        SUM(m.valor) AS total
        FROM
        movimentacoes AS m
        WHERE
        m.catdesp_id = 4
        AND m.data >= CURRENT_DATE()
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function movMes($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        m.id as id,
        m.data AS data,
        m.valor AS valor,
        m.forma_pagamento_id AS forma_pagamento_id,
        m.descricao as descricao,
        m.tipo as tipo,
        m.status as status,
        f.nome as pagamento,
        c.nome as categoria,
        u.nome as usuario

      FROM
      
      movimentacoes AS m
      INNER JOIN
      catdespesas AS c ON (m.catdesp_id = c.id)
      INNER JOIN
      forma_pagamento AS f ON (m.forma_pagamento_id = f.id)
      INNER JOIN
      usuarios AS u ON (m.usuarios_id = u.id) WHERE MONTH(m.data)
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function movDia($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        m.id as id,
        m.data AS data,
        m.valor AS valor,
        m.forma_pagamento_id AS forma_pagamento_id,
        m.descricao as descricao,
        m.tipo as tipo,
        m.status as status,
        f.nome as pagamento,
        c.nome as categoria,
        u.nome as usuario

      FROM
      
      movimentacoes AS m
      INNER JOIN
      catdespesas AS c ON (m.catdesp_id = c.id)
      INNER JOIN
      forma_pagamento AS f ON (m.forma_pagamento_id = f.id)
      INNER JOIN
      usuarios AS u ON (m.usuarios_id = u.id) WHERE m.data >= current_date()
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }


    public function innerjoinVeiculo($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
                m.id as id,
                m.nome as marca
                m.fabricante as fabricante
                FROM
                marcas AS m ON
                ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }

    public function movimentacaoDiaria($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        m.id as id,
        m.data AS data,
        m.valor AS valor,
        m.forma_pagamento_id AS forma_pagamento_id,
        m.descricao as descricao,
        m.tipo as tipo,
        m.status as status,
        f.nome as pagamento,
        c.nome as categoria,
        u.nome as usuario

      FROM
      
      movimentacoes AS m
      INNER JOIN
      catdespesas AS c ON (m.catdesp_id = c.id)
      INNER JOIN
      forma_pagamento AS f ON (m.forma_pagamento_id = f.id)
      INNER JOIN
      usuarios AS u ON (m.usuarios_id = u.id) WHERE m.data >= current_date()
        ' . $where . ' ' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function baixo($where = null, $order = null, $limit = null)
    {

        $where = strlen($where) ? 'AND ' . $where : '';
        $order = strlen($order) ? 'ORDER BY ' . $order : '';
        $limit = strlen($limit) ? 'LIMIT ' . $limit : '';


        $query = 'SELECT 
        p.id as id,
        p.codigo as codigo,
        p.barra as barra,
        p.data as data,
        p.nome as nome,
        p.foto as foto,
        p.estoque as estoque,
        p.aplicacao as aplicacao,
        p.valor_compra as valor_compra,
        c.nome as categoria
        
    FROM
        produtos AS p
            INNER JOIN
        categorias AS c ON (p.categorias_id = c.id) WHERE p.estoque <= 3 ' . $where . '' . $order . ' ' . $limit;

        return $this->execute($query);
    }



    public function insert($values)
    {

        $fields = array_keys($values);
        $binds  = array_pad([], count($fields), '?');

        $query = 'INSERT INTO ' . $this->table . ' (' . implode(',', $fields) . ') VALUE (' . implode(',', $binds) . ')';

        $this->execute($query, array_values($values));

        return $this->connection->lastInsertId();
    }

    public function update($where, $values)
    {

        $fields = array_keys($values);

        $query = 'UPDATE ' . $this->table . ' SET ' . implode('=?,', $fields) . '=? WHERE ' . $where;
        $this->execute($query, array_values($values));
        return true;
    }


    public function delete($where)
    {

        $query = 'DELETE FROM ' . $this->table . ' WHERE ' . $where;
        $this->execute($query);
        return true;
    }

    public function pdf($where = null)
    {

        $where = strlen($where) ? 'WHERE ' . $where : '';


        $query = 'SELECT * FROM ' . $this->table . ' ' . $where . ' ORDER BY id desc';

        return $this->execute($query);
    }

    public function consultar($id)
    {

        $query = 'SELECT * FROM galerias as g WHERE ' . $id;

        return $this->execute($query);
    }
}
