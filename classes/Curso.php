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

    function __construct($nome, $codigo, $id) {
        $this->nome = $nome;
        $this->codigo = $codigo;
        $this->id = $id;
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





}
