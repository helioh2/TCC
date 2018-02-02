<?php

$nome = $_POST['nome'];
$senha = $_POST['senha'];
$email = $_POST['email'];

require_once '../classes/BD/crudPDO.php';
$id = inserir("usuario", array('nome' => $nome, 'senha' => $senha, 'email' => $email));

session_start();
$_SESSION["usuario"] = array('id' => $id, 'senha' => $senha, 'nome' => $nome);
