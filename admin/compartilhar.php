<?php

require_once '../classes/BD/crudPDO.php';

$idCurso = $_POST['idCurso'];

$idConvidado = $_POST['idConvidado'];

$num = numLinhasSelecionarWHERE("compartilhado", array('id_curso'), "id_curso = '$idCurso' AND id_compartilhado  = '$idConvidado'");
if ($num > 0) {
    print "este curso já está compartilhado";
} else {
    $inseriu = inserir("compartilhado", array('id_curso' => $idCurso, 'id_compartilhado' => $idConvidado));
    
    if($inseriu != 0){
        print "compartilhado com sucesso!";
    }else{
        "erro";
    }
}