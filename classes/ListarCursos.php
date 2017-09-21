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
include_once '../classes/Curso.php';

class ListarCursos {

    private $cursos = array();

    public function __construct() {
        $fetch = selecionar("curso", array("id","codigo", "nome", "semanas"));
        foreach ($fetch as $linha) {
            $disc = new Curso();
            $disc->curso($linha["nome"], $linha["codigo"],$linha["id"], $linha["semanas"]);
            $this->cursos[] = $disc;
        }
    }

    public function listar() {

       
        foreach ($this->getCursos() as $curso) {

            echo "<tr>"
            . "<td id='codigo" . $curso->getCodigo() . "'>" . $curso->getCodigo() . "</td>"
            . "<td><a href='formCurso.php?idCurso=" . $curso->getId() . "'> Alterar</a></td>"
                    ."<td><a href='listarDisciplinas.php?codigo=" . $curso->getCodigo() . "'>".$curso->getNome() ."</td>"
            . "</tr>";
        }
    }

    function getCursos() {
        return $this->cursos;
    }

}
