<?php
include_once '../classes/Disciplina.php';
include_once '../classes/ListarDisciplinas.php';
include_once '../classes/Disciplina.php';

//$nomeCurso = $_POST["nomeCurso"];
//$codCurso = $_POST["codCurso"];
$idCurso = $_POST["idCurso"];




$listDisciplinas = new ListarDisciplinas($idCurso);

//$listaDisciplinas = $listDisciplinas->getDisciplinas();


$listaDisciplinasSemRequisitos= $listDisciplinas->getDisciplinasSemRequisito();



foreach ($listaDisciplinasSemRequisitos as $disc) {
    echo "<option value='".$disc->getCodigo()."' id='codDisciplina'>".$disc->getNome()."</option>";
}


// echo $listDisciplinas->listar($codCurso, $nomeCurso);
?>
