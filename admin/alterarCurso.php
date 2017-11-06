<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


include_once '../classes/BD/crudPDO.php';



$nome = $_POST["nome"];
$codigo = $_POST["codigo"];
$idCurso = $_POST["idCurso"];


alterar("curso", array ("codigo" => $codigo, "nome" => $nome), "id = '$idCurso'");

$fetch = selecionarWHERE("curso", array("nome","codigo"), "id='".$idCurso."'");
foreach ($fetch as $f) {
    $nomeCurso = $f["nome"];
    $codCurso = $f["codigo"];
    
}


print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=".$nomeCurso."&codigo=".$codCurso."'</script>";