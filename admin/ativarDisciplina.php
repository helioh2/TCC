<?php

require_once '../classes/BD/crudPDO.php';

$id = $_POST['id'];
$ativo = $_POST['ativo'];

if($ativo){
    alterar("disciplina", array('ativa' => 0), "ID = $id");
    
}else{
    
    alterar("disciplina", array('ativa' => 1), "ID = $id");
    
}



