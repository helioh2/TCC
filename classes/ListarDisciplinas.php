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
<style type="text/css">
<!--
a.dcontexto {
	position: relative;
	font: 16px arial, verdana, helvetica, sans-serif;
	padding: 0;
	color: #039;
	text-decoration: none;
	cursor: help;
	z-index: 24;
}
a.dcontexto:hover {
	background: transparent;
	z-index: 25;
}
a.dcontexto span {
	display: none;
}
a.dcontexto:hover span {
	display: block;
	position: absolute;
	width: 230px;
	top: 0em;
	text-align: justify;
	left: 6em;
	font: 14px Verdana, arial, helvetica, sans-serif;
	padding: 5px 10px;
	border: 0.5px solid #999;
	background: #E8EBF2;
	color: #000;
}
-->
</style>

<?php

include_once '../classes/Disciplina.php';
include_once '../classes/BD/crudPDO.php';

class ListarDisciplinas {

    private $disciplinas = array();
    private $disciplinasSemRequisitos = array();

    public function __construct($id_curso) {
        $fetch = selecionarWHERE("disciplina", array("CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "requisitoCadastrado", "ativa"), "id_curso = '$id_curso'");
        foreach ($fetch as $linha) {
            $disc = new Disciplina($linha["NOME"], $linha["CODIGO"], 0, $linha["TOTAL_CARGA_HORARIA"], 0, 0, $linha["requisitoCadastrado"], $linha["ativa"]);
            $this->disciplinas[] = $disc;
            if ($linha["requisitoCadastrado"] == 0) {
                $disc = new Disciplina($linha["NOME"], $linha["CODIGO"], 0, $linha["TOTAL_CARGA_HORARIA"], 0, 0, $linha["requisitoCadastrado"], $linha["ativa"]);
                $this->disciplinasSemRequisitos[] = $disc;
            }
        }
    }

    public function listar($id_curso) {

        $fetch = selecionarWHERE("disciplina", array("ID", "CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "requisitoCadastrado"), "id_curso = '$id_curso' ORDER BY NOME");
        foreach ($fetch as $linha) {

            $hora = "";
            $horarios = selecionarWHERE("disciplina, horario, disc_horario", array("horario.hora_inicio", "horario.dia"), "disciplina.ID = '" . $linha["ID"] . "' AND disc_horario.id_disciplina = disciplina.ID AND horario.id_horario = disc_horario.id_horario");

            foreach ($horarios as $h) {
                $hora = $hora . $h["dia"] . " " . $h["hora_inicio"] . " - ";
            }
            $codigoCurso = selecionarWHERE("curso", array("codigo", "nome"), "curso.id = '" . $id_curso . "' LIMIT 1");
            foreach ($codigoCurso as $cod) {
                $codCurso = $cod["codigo"];
                $nomeCurso = $cod["nome"];
            }

            echo "<tr>"
            . "<td ";
            if ($linha["requisitoCadastrado"] == 0) {
                echo " class='text-danger'";
            }
            echo " id='codigo" . $linha["CODIGO"] . "'>" . $linha["CODIGO"] . "</td>"
            . "<td><a href='formDisciplina.php?codigo=" . $linha["CODIGO"] . "&idCurso=" . $id_curso . "'";
             if ($linha["requisitoCadastrado"] == 0) {
                echo " class='text-danger dcontexto'><span>Requisitos não cadastrados!!!!</span>";
            }else{
                echo  ">";
            }
            echo  $linha["NOME"] . "</a></td>"
            . "<td>" . $linha["categoria"] . "</td>"
            . "<td>" . $linha["TOTAL_CARGA_HORARIA"] . "</td>"
            . "<td><a href='horarios.php?idDisciplina=" . $linha["ID"] . "&codigo=" . $codCurso . "'>Horário<br>" . $hora . "</a></td>"
            . "<td><a href='excluirDisciplina.php?idDisciplina=" . $linha["ID"] . "&codigo=" . $codCurso . "&nomeCurso='" . $nomeCurso . "'>Deletar</a></td>"
            . "</tr>";
        }
    }

    function getDisciplinas() {
        return $this->disciplinas;
    }

    function getDisciplinasSemRequisito() {
        return $this->disciplinasSemRequisitos;
    }

}
?>