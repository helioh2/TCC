<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Disciplina
 *
 * @author danielkarling
 */
class Curso {

    private $nome;
    private $codigo;
    private $id;
    private $semanas;

    function __construct() {
        
    }

    function curso($nome, $codigo, $id, $semanas) {
        $this->nome = $nome;
        $this->codigo = $codigo;
        $this->id = $id;
        $this->semanas = $semanas;
    }

    function buscarPorGRR($grr) {

        $conn = DataBase::getInstance()->getDb();
        $sql = "  SELECT curso.id, curso.codigo, curso.nome, curso.semanas FROM curso, aproveitamento WHERE aproveitamento.MATR_ALUNO= '$grr' and curso.id=aproveitamento.id_curso LIMIT 1;";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $fetch = $stmt->fetchAll();

        foreach ($fetch as $f) {
            $this->id = $f["id"];
            $this->codigo = $f["codigo"];
            $this->nome = $f["nome"];
            $this->semanas = $f["semanas"];
        }
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setCodigo($codigo) {
        $this->codigo = $codigo;
    }

    function getNome() {
        return $this->nome;
    }

    function getCodigo() {
        return $this->codigo;
    }

    function getId() {
        return $this->id;
    }
    function getSemanas() {
        return $this->semanas;
    }


}
