<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once '../classes/BD/crudPDO.php';

$nome = $_POST["nome"];
$codigo = $_POST["codigo"];
$categoria = $_POST["categoria"];
$ch = $_POST["CH"];
$codCurso = $_POST["codCurso"];
$nomeCurso = $_POST["nomeCurso"];

$fetch = selecionarWHERE("curso", array("id"),"codigo = '".$codCurso."' limit 1;");
foreach ($fetch as $f) {
    $id_curso = $f["id"];
    
}

inserir("disciplina", array("CODIGO" => $codigo, "NOME" => $nome, "categoria" => $categoria, "TOTAL_CARGA_HORARIA" => $ch, "id_curso"=> $id_curso, "requisitoCadastrado" => 0));

print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=$nomeCurso&codigo=$codCurso' </script>";