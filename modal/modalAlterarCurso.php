<?php
include_once '../classes/BD/crudPDO.php';
$idCurso = $_POST["idCurso"];

$fetch = selecionarWHERE("curso", array("codigo", "nome"), "id='$idCurso' LIMIT 1");
foreach ($fetch as $f) {

    $codigo = $f["codigo"];
    $nome = $f["nome"];
}
?>


<center>
    <form id="disc"  name="curso" method="post" action="../admin/alterarCurso.php">
        Nome<br><input name="nome" class="text-uppercase text-warning text-center"  type="text" id="nome" value = "<?php echo $nome; ?>"><br>
        <br><input class="text-warning text-uppercase text-center" name="codigo" type="hidden" id="codigo" value = "<?php echo $codigo; ?>"><br>


        <input name="idCurso" class="  center-block "  type="hidden" id="idCurso" value ="<?php echo $idCurso; ?>">

        <br>
        <input type="submit" name="submit" class="btn btn-success" value="Alterar">
    </form>
</center>

