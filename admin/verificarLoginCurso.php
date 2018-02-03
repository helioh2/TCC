<?php

$idCurso = $_POST['idCurso'];
require_once '../classes/BD/crudPDO.php';

session_start();
if (!(isset($_SESSION["usuario"]))) {
    print "erro";
} else {
    $id_usuario = $_SESSION["usuario"]['id'];
    // $num = numLinhasSelecionarWHERE("curso", array('id'), "id = '$idCurso' AND id_usuario = '$id_usuario'");
    $num = numLinhasSelecionarWHERE("curso LEFT JOIN compartilhado ON curso.id = compartilhado.id_curso",
            array('curso.id'), 
            "curso.id = $idCurso AND (curso.id_usuario = $id_usuario OR compartilhado.id_compartilhado = $id_usuario)");
            
    if ($num > 0) {
        $senha_session = $_SESSION["usuario"]['senha'];
        $fetch = selecionarWHERE('usuario', array('senha'), "id = '$id_usuario'");
        foreach ($fetch as $f) {
            if ($senha_session == $f['senha']) {

                print "logado";
            } else {

                print "erro";
            }
        }
    } else {
        print "erro";
    }
}