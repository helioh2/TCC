<?php
include_once '../classes/Disciplina.php';
include_once '../classes/BD/crudPDO.php';

class ListarDisciplinas {

    private $disciplinas = array();
    private $disciplinasSemRequisitos = array();

    public function __construct($id_curso) {
        session_start();
        $id_usuario = $_SESSION["usuario"]['id'];
        $num = numLinhasSelecionarWHERE("curso left join compartilhado on curso.id = compartilhado.id_curso",
                array('curso.id'), " curso.id = $id_curso AND (curso.id_usuario = $id_usuario OR compartilhado.id_compartilhado = $id_usuario)");
        if ($num > 0) {
            $fetch = selecionarWHERE("disciplina", array("CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "requisitoCadastrado", "ativa"), "id_curso = '$id_curso' ORDER BY NOME");
            foreach ($fetch as $linha) {
                $disc = new Disciplina($linha["NOME"], $linha["CODIGO"], 0, $linha["TOTAL_CARGA_HORARIA"], 0, 0, $linha["requisitoCadastrado"], $linha["ativa"]);
                $this->disciplinas[] = $disc;
                if ($linha["requisitoCadastrado"] == 0) {
                    $disc = new Disciplina($linha["NOME"], $linha["CODIGO"], 0, $linha["TOTAL_CARGA_HORARIA"], 0, 0, $linha["requisitoCadastrado"], $linha["ativa"]);
                    $this->disciplinasSemRequisitos[] = $disc;
                }
            }
        }
    }

    public function listar($id_curso) {
        session_start();
        $id_usuario = $_SESSION["usuario"]['id'];
        $num = numLinhasSelecionarWHERE("curso  left join compartilhado on curso.id = compartilhado.id_curso", 
                array('curso.id'), " curso.id = $id_curso AND (curso.id_usuario = $id_usuario OR compartilhado.id_compartilhado = $id_usuario)");
        if ($num > 0) {


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
                } else {
                    echo ">";
                }
                echo $linha["NOME"] . "</a></td>"
                . "<td>" . $linha["categoria"] . "</td>"
                . "<td>" . $linha["TOTAL_CARGA_HORARIA"] . "</td>"
                . "<td><a href='horarios.php?idDisciplina=" . $linha["ID"] . "&codigo=" . $codCurso . "'>Horário<br>" . $hora . "</a></td>"
                . "<td><a href='excluirDisciplina.php?idDisciplina=" . $linha["ID"] . "&codigo=" . $codCurso . "&nomeCurso='" . $nomeCurso . "'>Deletar</a></td>"
                . "</tr>";
            }
        }
    }

    //nao esta sendo usado
    public function listarPorNome($id_curso, $nome) {

        $fetch = selecionarWHERE("disciplina", array("ID", "CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "requisitoCadastrado"), "id_curso = '$id_curso' AND NOME LIKE '%$nome%' ORDER BY NOME");
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
            } else {
                echo ">";
            }
            echo $linha["NOME"] . "</a></td>"
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