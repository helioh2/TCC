<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once '../classes/BD/crudPDO.php';
$idCurso = $_GET["idCurso"];

$fetch = selecionarWHERE("curso", array( "codigo", "nome"), "id='$idCurso' LIMIT 1");
foreach ($fetch as $f) {

    $codigo = $f["codigo"];
    $nome = $f["nome"];
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
                <form id="disc"  name="curso" method="post" action="alterarCurso.php">
                    Nome<br><input name="nome" class="text-success  text-center"  type="text" id="nome" value = "<?php echo $nome; ?>"><br>
                    Cógido<br><input class="text-success  text-center" name="codigo" type="text" id="codigo" value = "<?php echo $codigo; ?>"><br>
                   
                    
                    <input name="idCurso" class="text-success center-block "  type="hidden" id="idCurso" value ="<?php echo $idCurso; ?>">
                   
                    <br>
                    <input type="submit" name="submit" class="alert-success" value="Alterar">
                </form>
        </center>

    </div>

</div>


