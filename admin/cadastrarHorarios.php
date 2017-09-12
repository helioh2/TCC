<?php

include_once '../classes/BD/crudPDO.php';
$idHorario = "";
if (!empty($_POST["idHorario"])) {
    $idHorario = $_POST["idHorario"];
}
$codCurso = $_POST["codigo"];

$idDisciplina = $_POST["idDisciplina"];
deletar("disc_horario", "id_disciplina = '" . $idDisciplina . "'");

if ($idHorario != "") {
    foreach ($idHorario as $horario) {

        inserir("disc_horario", array("id_disciplina" => $idDisciplina, "id_horario" => $horario));
    }
}else{
    deletar("disc_horario", "id_disciplina = '$idDisciplina'");
}
    
print "<script type = 'text/javascript'> location.href = './horarios.php?idDisciplina=$idDisciplina&codigo=$codCurso'</script>";
