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

class ListarDisciplinas {

    private $disciplinas = array();

    public function __construct($id_curso) {
        $fetch = selecionarWHERE("disciplina", array("CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA"), "id_curso = '$id_curso'");
        foreach ($fetch as $linha) {
            $disc = new Disciplina($linha["NOME"], $linha["CODIGO"], 0, $linha["TOTAL_CARGA_HORARIA"], 0, 0);
            $this->disciplinas[] = $disc;
        }
    }

    public function listar($id_curso) {

        $fetch = selecionarWHERE("disciplina", array("ID", "CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA"), "id_curso = '$id_curso'");
        foreach ($fetch as $linha) {

            $hora = "";
            $horarios = selecionarWHERE("disciplina, horario, disc_horario", array("horario.hora_inicio", "horario.dia"), "disciplina.ID = '".$linha["ID"]."' AND disc_horario.id_disciplina = disciplina.ID AND horario.id_horario = disc_horario.id_horario");

            foreach ($horarios as $h) {
                $hora = $hora . $h["dia"] . " " . $h["hora_inicio"]." - ";
            }
            $codigoCurso = selecionarWHERE("curso", array("codigo"), "curso.id = '".$id_curso."' LIMIT 1");
            foreach ($codigoCurso as $cod) {
                $codCurso = $cod["codigo"];
                
            }
            echo "<tr>"
            . "<td id='codigo" . $linha["CODIGO"] . "'>" . $linha["CODIGO"] . "</td>"
            . "<td><button class='btn btn-info' data-toggle='modal' data-target='#alt'>Alt</button></td>"
            . "<td><a href='formDisciplina.php?codigo=" . $linha["CODIGO"] . "&idCurso=" . $id_curso . "'>" . $linha["NOME"] . "</a></td>"
            . "<td>" . $linha["categoria"] . "</td>"
            . "<td>" . $linha["TOTAL_CARGA_HORARIA"] . "</td>"
            . "<td><a href='horarios.php?idDisciplina=" . $linha["ID"]."&codigo=" .$codCurso . "'>Horário<br>" . $hora . "</a></td>"
            . "</tr>";
        }
    }

    function getDisciplinas() {
        return $this->disciplinas;
    }

}
