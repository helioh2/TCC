<?php

include_once '../classes/Disciplina.php';
include_once '../classes/ListarDisciplinas.php';
include_once '../classes/Disciplina.php';

//$nomeCurso = $_POST["nomeCurso"];
//$codCurso = $_POST["codCurso"];]
$idCurso = $_POST["idCurso"];
$order = $_POST['order'];


$fetch = listarRequisitos($idCurso, $order);

$disciplinaAnterior = "";
echo "<div class='panel panel-primary'>";
echo "<hr><h3 style='margin-left: 15px;' >REQUISITOS CADASTRADOS</h3>";
foreach ($fetch as $f) {
    if ($disciplinaAnterior != $f['disciplina']) {
        echo "</hr>";
        echo "<hr style='border-bottom: 2px solid #000000;'>";
        // echo "</div>";
        //echo "<div class='panel panel-primary'>";
        $disciplinaAnterior = $f['disciplina'];
        echo "<div class='row'>";
        echo "<div class='col-md-6'><h4 class='text-success text-uppercase' style='margin-left: 5px;'>" . $f['disciplina'] . "</h4></div>";
        echo "<div clas='col-md-6'><button style='margin-left: 70%; margin-top: 0px;' onclick='apagarRequisito(" . $f['id'] . ")' class='btn btn-md btn-default alert-danger'>REMOVER</button></div>";
        echo "</div>";
    }

    echo "<label class='text-uppercase text-info' style='margin-left: 5px;'>" . $f['requisito'] . " </label> <br> ";
}
echo "</hr>";


//echo "</div>";



$fetch2 = selecionarWHERE("requisito JOIN disciplina ON requisito.id_disciplina = disciplina.ID", array('disciplina.ID', 'disciplina.NOME'), "disciplina.id_curso = $idCurso AND requisito.id_requisito = 0");
foreach ($fetch2 as $f) {
    echo "<hr style='border-bottom: 2px solid #000000;'>";
    //echo "<div class='panel panel-primary'>";
    echo "<div class='row'>";
    echo "<div class='col-md-6'><h4 class='text-success text-uppercase' style='margin-left: 5px;' >" . $f['NOME'] . "</h4></div>";
    echo "<div clas='col-md-6'><button style='margin-left: 70%; margin-top: 0px;' onclick='apagarRequisito(" . $f['ID'] . ")' class='btn btn-md btn-default alert-danger'>REMOVER</button></div>";
    echo "</div>";
    echo "</hr>";
    //echo "</div>";
}
echo "<br>";
echo "</div>";
echo "<br>";
echo "<center>";
echo "<button type='button' class='btn btn-danger btn-md' onclick='excluirTodos($idCurso)'> Excluir Todos Requisitos</button>";
echo "</center>";
echo "<br>";

// echo $listDisciplinas->listar($codCurso, $nomeCurso);
?>
