<?php

include_once '../classes/Disciplina.php';
include_once '../classes/ListarDisciplinas.php';
include_once '../classes/Disciplina.php';

//$nomeCurso = $_POST["nomeCurso"];
//$codCurso = $_POST["codCurso"];]
$idCurso = $_POST["idCurso"];

$fetch = listarRequisitos($idCurso);

$disciplinaAnterior = "";
foreach ($fetch as $f) {
    if ($disciplinaAnterior != $f['disciplina']) {
        $disciplinaAnterior = $f['disciplina'];
        echo "<br><label class='text-success' >" . $f['disciplina'] . "</label><br>";
        echo "<button onclick='apagarRequisito(" . $f['id'] . ")' class='btn btn-sm btn-default'>APAGAR</button><br><br>";
    }

    echo "" . $f['requisito'] . "<br>";
}

$fetch2 = selecionarWHERE("requisito JOIN disciplina ON requisito.id_disciplina = disciplina.ID", array('disciplina.ID', 'disciplina.NOME'), "disciplina.id_curso = $idCurso AND requisito.id_requisito = 0");
foreach ($fetch2 as $f) {
    echo "<br><label class='text-success' >" . $f['NOME'] . "</label><br>";
    echo "<button onclick='apagarRequisito(" . $f['ID'] . ")' class='btn btn-sm btn-default'>APAGAR</button><br><br>";
}




// echo $listDisciplinas->listar($codCurso, $nomeCurso);
?>
