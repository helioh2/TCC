<?php
require_once '../classes/BD/crudPDO.php';

$idConvidado = $_POST['idConvidado'];

$idCurso = $_POST['idCurso'];

$i =deletar("compartilhado", "id_curso = $idCurso AND id_compartilhado = $idConvidado");
if($i){
    echo "sucesso";
}else{
    echo "falha ao deletar";
}
