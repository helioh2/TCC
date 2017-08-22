<?php

include_once '../classes/ListarDisciplinas.php';

$nomeCurso = $_GET["nome"];
$codCurso = $_GET["codigo"];

inserir("curso", array("nome"=>$nomeCurso, "codigo"=>$codCurso));

print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=$nomeCurso&codigo=$codCurso' </script>";