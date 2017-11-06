<?php

include_once '../classes/BD/crudPDO.php';


$idDisciplina = $_GET["idDisciplina"];
if (!empty($_GET["codigo"])) {
    $codCurso = $_GET["codigo"];
}
$nomeCurso = $_GET['nomeCurso'];


$fetch = selecionarWHERE("disciplina", array("requisitada", "requisitoCadastrado"), "ID = '$idDisciplina' LIMIT 1");
foreach ($fetch as $cod) {
    $requisitada = $cod["requisitada"];
    $requisito = $cod["requisitoCadastrado"];
}


if ($requisitada || $requisito) {
    print"<script> alert('Não é possível deletar, pré requisitos já cadastrados'); </script>";
} else {
    if (deletar("disc_horario", "id_disciplina = '$idDisciplina'")) {

        deletar("disciplina", "ID = '$idDisciplina'");
    }else{
        print"<script> alert('OOPS'); </script>";
    }
}
print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=$nomeCurso&codigo=$codCurso' </script>";
