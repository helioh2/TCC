<?php
require_once '../classes/BD/crudPDO.php';
session_start();

if (!(isset($_SESSION["usuario"]))) {
    print "erro";
} else {
    $senha = $_SESSION["usuario"]['senha'];
    $id_usuario = $_SESSION["usuario"]['id'];
    $fetch = selecionarWHERE('usuario', array('senha'), "id = '$id_usuario'");
    foreach ($fetch as $f) {
        if ($senha == $f['senha']) {
            print "logado";
        }else{
            
            print "erro";
        }
    }
}
