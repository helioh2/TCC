<?php

include_once '../classes/BD/crudPDO.php';


$idDisciplina = $_POST["id"];



$fetch = selecionarWHERE("disciplina", array("requisitada", "requisitoCadastrado"), "ID = '$idDisciplina' LIMIT 1");
foreach ($fetch as $cod) {
    $requisitada = $cod["requisitada"];
    $requisito = $cod["requisitoCadastrado"];
}


if ($requisitada || $requisito) {
    print" Não é possível deletar, pré requisitos já cadastrados";
    //return "Não é possível deletar, pré requisitos já cadastrados";
} else {
    if (deletar("disc_horario", "id_disciplina = '$idDisciplina'")) {

        deletar("disciplina", "ID = '$idDisciplina'");
        print "sucesso";
    }else{
        print"alert('OOPS')";
        //return "OOPS";
    }
}
//print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=$nomeCurso&codigo=$codCurso' </script>";
