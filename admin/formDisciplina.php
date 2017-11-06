<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once '../classes/BD/crudPDO.php';
$codigo = $_GET["codigo"];
$idCurso = $_GET["idCurso"];

$fetch = selecionarWHERE("disciplina", array("ID", "CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "ativa"), "CODIGO='$codigo' LIMIT 1");
foreach ($fetch as $f) {

    $codigo = $f["CODIGO"];
    $nome = $f["NOME"];
    $categoria = $f["categoria"];
    $ch = $f["TOTAL_CARGA_HORARIA"];
    $idDisciplina = $f["ID"];
    
    $ativa = $f["ativa"];
}
?>

<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery-3.2.0.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</head>
<div class="modal-dialog" id="modal">
    <div class="modal-content">
        <center>
            <div class="modal-header">Alterar <?php echo $nome; ?></div>
            <div class="modal-body">
                <form id="disc"  name="curso" method="post" action="alterarDisciplina.php">
                    Nome<br><input name="nome" class="text-success  text-center"  type="text" id="nome" value = "<?php echo $nome; ?>">
                    <input class="text-success  text-center" name="codigo" type="hidden" id="codigo" value = "<?php echo $codigo; ?>"><br>
                    Categoria<br><input class="text-success  text-center" name="categoria" type="text" id="categoria" value = "<?php echo $categoria; ?>"><br>
                    Carga Horaria<br><input class="text-success  text-center" name="CH" type="number" id="CH" value = "<?php echo $ch; ?>" ><br> 
                    Ativa <br><input class="text-success  text-center" name="ativa" type="checkbox" id="ativa" value = "1" <?php if ($ativa != 0) echo "checked" ?> ><br> 

                    <input name="idCurso" class="text-success center-block "  type="hidden" id="idCurso" value ="<?php echo $idCurso; ?>">
                    <input name="idDisciplina" class="text-success center-block "  type="hidden" id="idDisciplina" value ="<?php echo $idDisciplina; ?>">
                    <br>
                    <input type="submit" name="submit" class="alert-success" value="Alterar">
                </form>
        </center>

    </div>

</div>


