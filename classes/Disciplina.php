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
class Disciplina {

    private $nome;
    private $codigo;
    private $ativa;
    private $importancia;
    private $horasDedicacaoSemanal;
    private $cargaHoraria;
    private $percAprovCategoria;
    private $mediaFinalCategoria;
    public $horarios = array();
    private $colisoes = array();
    private $requisitosCadastrados = 0;

    function __construct($nome, $codigo, $importancia, $cargaHoraria, $percAprovCategoria, $mediaFinalCategoria, $requisitosCadastrados, $ativa) {
        $this->nome = $nome;
        $this->codigo = $codigo;
        $this->importancia = $importancia;
        $this->cargaHoraria = $cargaHoraria;
        $this->percAprovCategoria = $percAprovCategoria;
        $this->mediaFinalCategoria = $mediaFinalCategoria;
        $this->requisitosCadastrados = $requisitosCadastrados;
        $this->ativa = $ativa;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setCodigo($codigo) {
        $this->codigo = $codigo;
    }

    function setImportancia($importancia) {
        $this->importancia = $importancia;
    }

    function setHorasDedicacao($horasDedicacao) {
        $this->horasDedicacaoSemanal = $horasDedicacao;
    }

    function getNome() {
        return $this->nome;
    }

    function getCodigo() {
        return $this->codigo;
    }

    function getImportancia() {
        return $this->importancia;
    }

    function getHorasDedicacao() {
        return $this->horasDedicacaoSemanal;
    }

    function getCargaHoraria() {
        return $this->cargaHoraria;
    }

    function setCargaHoraria($cargaHoraria) {
        $this->cargaHoraria = $cargaHoraria;
    }

    function getPercAprovCategoria() {
        return $this->percAprovCategoria;
    }

    function getMediaFinalCategoria() {
        return $this->mediaFinalCategoria;
    }

    function getAtiva() {
        return $this->ativa;
    }

    function setPercAprovCategoria($percAprovCategoria) {
        $this->percAprovCategoria = $percAprovCategoria;
    }

    function setMediaFinalCategoria($mediaFinalCategoria) {
        $this->mediaFinalCategoria = $mediaFinalCategoria;
    }

    public function ordenaDisciplinas(Disciplina $d1, Disciplina $d2) {
        if ($d1->getImportancia() == $d2->getImportancia()) {
            return 0;
        }
        return ($d1->getImportancia()) >
                ($d2->getImportancia()) ? -1 : 1;
    }

    function getHorarios() {
        return $this->horarios;
    }

    function setAtiva($ativa) {
        $this->ativa = $ativa;
    }

    function setHorarios($horarios) {
        $this->horarios = $horarios;
    }

    function getColisoes() {
        return $this->colisoes;
    }

    function insereColisao($colisao) {
        if (!(in_array($colisao, $this->colisoes))) {
            $this->colisoes[] = $colisao;
        }
    }

    function getRequisitosCadastrados() {
        return $this->requisitosCadastrados;
    }

}
