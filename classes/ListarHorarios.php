<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ListarCursos
 *
 * @author danielkarling
 */
?>


<?php

include_once '../classes/Disciplina.php';
include_once '../classes/BD/crudPDO.php';

class ListarHorarios {

    private $horarios = array();

    public function __construct() {
        $fetch = selecionar("horario", array("id_horario", "hora_inicio", "dia"));
        foreach ($fetch as $linha) {
            $disc = new Horario($linha["id_horario"], $linha["hora_inicio"], $linha["dia"]);
            $this->horarios[] = $disc;
        }
    }

    public function listar() {
        
    }

    function getHorarios() {
        return $this->horarios;
    }

}
