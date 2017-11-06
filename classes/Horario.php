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
class Horario {

    private $id;
    private $hora;
    private $dia;

    function __construct($id, $hora, $dia) {
        $this->id = $id;
        $this->hora = $hora;
        $this->dia = $dia;
    }
    function getId() {
        return $this->id;
    }

    function getHora() {
        return $this->hora;
    }

    function getDia() {
        return $this->dia;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setHora($hora) {
        $this->hora = $hora;
    }

    function setDia($dia) {
        $this->dia = $dia;
    }




}
