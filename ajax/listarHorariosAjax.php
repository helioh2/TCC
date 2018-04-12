<?php
include_once '../classes/Horario.php';
include_once '../classes/ListarHorarios.php';

//$nomeCurso = $_POST["nomeCurso"];
//$codCurso = $_POST["codCurso"];]
$idDisciplina = $_POST["idDisciplina"];




$listHor = new ListarHorarios();

$listaHorarios = $listHor->getHorarios();

$horarioAnterior = "";
$arrayClass = array('text-info', 'text-primary');
$i = 0;
$class = $arrayClass[$i];
foreach ($listaHorarios as $horario) {
    if($horarioAnterior != $horario->getDia()){
        $horarioAnterior = $horario->getDia();
       
        $i = ($i + 1)%2;
        $class = $arrayClass[$i];
    }
    echo "<option class='$class' value='".$horario->getId()."' id='idHorario'>".$horario->getDia()." - ".$horario->getHora()."</option>";
}


// echo $listDisciplinas->listar($codCurso, $nomeCurso);
?>
