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
$CH = $_POST["CH"];
$idCurso = $_POST["idCurso"];


alterar("disciplina", array ("CODIGO" => $codigo, "NOME" => $nome,"categoria" => $categoria, "TOTAL_CARGA_HORARIA" => $CH ), "ID = '$id'");

$fetch = selecionarWHERE("curso", array("nome","codigo"), "id='".$idCurso."'");
foreach ($fetch as $f) {
    $nomeCurso = $f["nome"];
    $codCurso = $f["codigo"];
    
}


print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=".$nomeCurso."&codigo=".$codCurso."'</script>";