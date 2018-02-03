<?php

$nome = $_POST['nome'];
$senha = $_POST['senha'];
$email = $_POST['email'];

require_once '../classes/BD/crudPDO.php';
$id = inserir("usuario", array('nome' => $nome, 'senha' => base64_encode($senha), 'email' => $email));

session_start();
$_SESSION["usuario"] = array('id' => $id, 'senha' => base64_encode($senha), 'nome' => $nome);
