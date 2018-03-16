<?php
require_once '../classes/BD/crudPDO.php';
$id = $_POST['id'];

deletar("requisito", "id_disciplina = $id");

alterar("disciplina", array("requisitoCadastrado" => 0), "ID = $id");


