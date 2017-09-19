<?php

include_once '../classes/ListarDisciplinas.php';

$nomeCurso = $_GET["nome"];
$codCurso = $_GET["codigo"];
$semanas = $_GET["semanas"];

inserir("curso", array("nome"=>$nomeCurso, "codigo"=>$codCurso, "semanas" => $semanas));

print "<script type = 'text/javascript'> location.href = './listarDisciplinas.php?nome=$nomeCurso&codigo=$codCurso' </script>";