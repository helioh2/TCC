<?php
include_once '../classes/Disciplina.php';
include_once '../classes/ListarDisciplinas.php';
include_once '../classes/Disciplina.php';

//$nomeCurso = $_POST["nomeCurso"];
//$codCurso = $_POST["codCurso"];]
$idCurso = $_POST["idCurso"];




$listDisciplinas = new ListarDisciplinas($idCurso);

$listaDisciplinas = $listDisciplinas->getDisciplinas();


foreach ($listaDisciplinas as $disc) {
    echo "<option value='".$disc->getCodigo()."' id='codRequisito'>".$disc->getNome()."</option>";
}


// echo $listDisciplinas->listar($codCurso, $nomeCurso);
?>
