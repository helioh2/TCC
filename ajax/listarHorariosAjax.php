<?php
include_once '../classes/Horario.php';
include_once '../classes/ListarHorarios.php';

//$nomeCurso = $_POST["nomeCurso"];
//$codCurso = $_POST["codCurso"];]
$idDisciplina = $_POST["idDisciplina"];




$listHor = new ListarHorarios();

$listaHorarios = $listHor->getHorarios();


foreach ($listaHorarios as $horario) {
    echo "<option value='".$horario->getId()."' id='idHorario'>".$horario->getDia()." - ".$horario->getHora()."</option>";
}


// echo $listDisciplinas->listar($codCurso, $nomeCurso);
?>
