<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BuscaHorariosDisc
 *
 * @author danielkarling
 */
//require_once URL.'/classes/crudPDO';

class BuscaHorariosDisc {

    private $horarios = array();

    function getHorarios() {
        return $this->horarios;
    }

    function setHorarios($horarios) {
        $this->horarios = $horarios;
    }

    function __construct($codigo) {
        $fetch = selecionarWHERE("horario, disc_horario, disciplina", array("hora_inicio", "dia"), "disciplina.CODIGO = '$codigo' AND disc_horario.id_disciplina = disciplina.ID AND disc_horario.id_horario = horario.id_horario");
        foreach ($fetch as $f) {
            $h = $f["dia"] . " " . $f["hora_inicio"];
            //echo "<br>HORAAAA" . $h;
            $this->horarios[] = $h;
        } 
    }

}
