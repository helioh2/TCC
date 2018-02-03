<?php

require_once '../classes/BD/crudPDO.php';

$nome = $_POST['user'];
$senha = base64_encode($_POST['senha']);
$nova = $_POST['novaSenha'];
if ($nova !='' ) {
   
    if ((numLinhasSelecionarWHERE('usuario', array('id'), "nome = '$nome' AND senha = '$senha'")) > 0) {

        $fetch = selecionarWHERE('usuario', array('id'), "nome = '$nome' AND senha = '$senha'");
        

        foreach ($fetch as $f) {
            $id = $f['id'];
        }
        alterar("usuario", array('senha'=> base64_encode($nova)), "id = $id");
        session_start();
        unset($_SESSION["usuario"]);
        $_SESSION["usuario"] = array('id' => $id, 'senha' => base64_encode($nova) , 'nome' => $nome);
        print $id;
    } else {
        print 'erro';
    }
} else {


    if ((numLinhasSelecionarWHERE('usuario', array('id'), "nome = '$nome' AND senha = '$senha'")) > 0) {

        $fetch = selecionarWHERE('usuario', array('id'), "nome = '$nome' AND senha = '$senha'");

        foreach ($fetch as $f) {
            $id = $f['id'];
        }
        session_start();
        unset($_SESSION["usuario"]);
        $_SESSION["usuario"] = array('id' => $id, 'senha' => $senha,  'nome' => $nome);



        print $id;
    } else {
        print 'erro';
    }
}