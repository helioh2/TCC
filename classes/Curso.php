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
    private $compatilhado;

    function __construct() {
        
    }

    function curso($nome, $codigo, $id, $semanas) {
        $this->nome = $nome;
        $this->codigo = $codigo;
        $this->id = $id;
        $this->semanas = $semanas;
        $this->compatilhado = 0;
        $this->idPeriodo = 0;
    }

    function setCompartilhado($id_dono) {
        $this->compatilhado = $id_dono;
    }

    function getCompartilhado() {
        return $this->compatilhado;
    }

    function buscarPorGRR($grr) {

        $fetch = selecionarWHERE("aproveitamento JOIN curso ON aproveitamento.id_curso = curso.id", array('curso.id', 'curso.codigo', 'curso.nome', 'curso.semanas', 'curso.id_periodo'), "MATR_ALUNO= '$grr' LIMIT 1");

        foreach ($fetch as $f) {
            $this->id = $f["id"];
            $this->codigo = $f["codigo"];
            $this->nome = $f["nome"];
            $this->semanas = $f["semanas"];
            $this->idPeriodo = $f["id_periodo"];
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

    function getPeriodo(){
        return $this->idPeriodo;
        
    }
}
