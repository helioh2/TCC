

<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


include_once '../classes/BD/crudPDO.php';





$id = $_POST["idDisciplina"];

$nome = $_POST["nome"];
$codigo = $_POST["codigo"];
$categoria = $_POST["categoria"];
$CH = $_POST["ch"];
$idCurso = $_POST["idCurso"];
$ativa = $_POST["ativa"];

if (alterar("disciplina", array("CODIGO" => $codigo, "NOME" => $nome, "categoria" => $categoria, "TOTAL_CARGA_HORARIA" => $CH, "ativa" => $ativa), "ID = '$id'")) {
    print 1;
} else {
    print "erro ao alterar";
}


