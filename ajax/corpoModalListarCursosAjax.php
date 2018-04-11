<?php
include_once '../classes/ListarCursos.php';

$idUsuario = $_POST['idUsuario'];

$listCursos = new ListarCursos($idUsuario);

$listCursos->listar();
?>