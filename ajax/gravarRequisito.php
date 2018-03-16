<?php

include_once '../classes/BD/crudPDO.php';

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$idCurso = $_POST['idCurso'];
$codDisciplina = $_POST["codDisciplina"];
$fetch = selecionarWHERE("disciplina", array('ID'), "CODIGO =  '$codDisciplina' LIMIT 1");
foreach ($fetch as $f) {
    $idDisciplina = $f['ID'];
    alterar("disciplina", array("requisitoCadastrado" => 1), "ID = $idDisciplina");
}

$codRequisito = "";
if (!empty($_POST["codRequisito"])) {

    $codRequisito = $_POST["codRequisito"];
} else {
    inserir("requisito", array('id_disciplina' => $idDisciplina, 'id_requisito' => 0, 'id_curso'=> $idCurso));

    //alterar("disciplina", array("requisitoCadastrado" => 1), "ID = $idDisciplina");
}
//$codCurso = $_POST["codCurso"];

$listaRequisitos = $codRequisito;

foreach ($listaRequisitos as $requisito) {
    $fetch = selecionarWHERE("disciplina", array('ID'), "CODIGO =  '$requisito' LIMIT 1");
    foreach ($fetch as $f) {
        $idRequisito = $f['ID'];
    }
    alterar("disciplina", array("requisitada" => 1), "ID = $idRequisito");
    inserir("requisito", array('id_disciplina' => $idDisciplina, 'id_requisito' => $idRequisito, 'id_curso'=> $idCurso));
}
