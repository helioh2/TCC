<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include_once '../classes/BD/crudPDO.php';
$codCurso = $_GET["codigo"];
if ((file_exists("../jar/req" . $codCurso . ".pl"))) {
    
    
    $sucesso = unlink("../jar/req" . $codCurso . ".pl");
    unlink("../jar/qtdReq" . $codCurso . ".pl");
    if ($sucesso){
        $fetch = selecionarWHERE("curso", array("id"), "codigo = '$codCurso'");
        foreach ($fetch as $f) {
            $id = $f["id"];
        }
        alterar("disciplina", array("requisitoCadastrado" => 0, "requisitada" => 0), "id_curso = '$id'");
        
        echo  "<script>alert('Excluído com sucesso');</script>";
       
    }else{
       
         echo  "<script>alert('Não foi possível excluir');</script>";
        
    }
    
    
}else{
    
     echo  "<script>alert('Arquivo não encontrado');</script>";
     
}
print "<script type = 'text/javascript'> location.href = '../admin/listarDisciplinas.php?codigo=$codCurso'</script>";