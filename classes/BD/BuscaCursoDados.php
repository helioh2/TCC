<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BuscaCursoDados
 *
 * @author danielkarling
 */



class BuscaCursoDados {
    
    private $codigo;
    private $nome;
    private $semanas;
   

     public function __construct($grr) {

        try {
            $conn = DataBase::getInstance()->getDb();
            $sql = "  SELECT curso.codigo, curso.nome, curso.semanas FROM curso, aproveitamento WHERE aproveitamento.MATR_ALUNO= '$grr' and curso.id=aproveitamento.id_curso LIMIT 1;";
          

            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $fetch = $stmt->fetchAll();

            foreach ($fetch as $f) {
                $this->codigo = $f["codigo"];
                $this->nome = $f["nome"];
                $this->semanas = $f["semanas"];
                //echo $f["COD_CURSO"]."<br>";
            }
            //echo $this->nome;
        } catch (Exception $e) {
            
        }
    }
     function getCodigo() {
        return $this->codigo;
    }

    function getNome() {
        return $this->nome;
    }

    function setCodigo($codigo) {
        $this->codigo = $codigo;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }
    function getSemanas() {
        return $this->semanas;
    }



}
