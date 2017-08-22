<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of categoriaDados
 *
 * @author danielkarling
 */



class CategoriaDados {
    private $nome;
    private $percentAprovacao;
    private $mediaFinal;
    private $qtd;

    public function __construct($nome){
        $this->nome = $nome;
    }

    public function getNome() {
        return $this->nome;
    }

    public function getPercentAprovacao() {
        return $this->percentAprovacao;
    }

    public function getMediaFinal() {
        return $this->mediaFinal;
    }

    public function setPercentAprovacao($percentAprovacao) {
        $this->percentAprovacao = $percentAprovacao;
    }

    public function setMediaFinal($mediaFinal) {
        $this->mediaFinal = $mediaFinal;
    }
    function getQtd() {
        return $this->qtd;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setQtd($qtd) {
        $this->qtd = $qtd;
    }


}

