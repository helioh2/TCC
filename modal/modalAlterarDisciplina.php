

<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once '../classes/BD/crudPDO.php';
$idCurso = $_POST["idCurso"];
$idDsciplina = $_POST["idDsciplina"];

$fetch = selecionarWHERE("disciplina", array("ID", "CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "ativa"), "ID='$idDsciplina' LIMIT 1");
foreach ($fetch as $f) {

    $codigo = $f["CODIGO"];
    $nome = $f["NOME"];
    $categoria = $f["categoria"];
    $ch = $f["TOTAL_CARGA_HORARIA"];
    $idDisciplina = $f["ID"];

    $ativa = $f["ativa"];
}
?>
<script type="text/javascript">

    function disciplinaAlterada() {
        var nome = document.getElementById("nomeALT").value;
        var codigo = document.getElementById("codigoALT").value;
        var categoria = document.getElementById("categoriaALT").value;
        var ch = document.getElementById("chALT").value;
        var ativa = document.getElementById("ativaALT").checked;
        var idCurso = document.getElementById("idCursoALT").value;
        var idDisciplina = document.getElementById("idDisciplinaALT").value;

        if (ativa === true) {
            ativa = 1;

        } else {
            ativa = 0;

        }

        $.ajax({
            type: 'POST',
            url: "alterarDisciplina.php",
            data: {nome: nome, codigo: codigo, ch: ch, categoria: categoria, ativa: ativa, idCurso: idCurso, idDisciplina: idDisciplina},
        }).done(function (data) {
            if (data != 1) {
                alert(data);
            }

            atualizar();
            $("#modal").modal("hide");

        });


    }

</script>

<center>

    <form id="disc"  name="curso" method="post" action="alterarDisciplina.php">
        Nome<br><input name="nome" class="text-success  text-center"  type="text" id="nomeALT" value = "<?php echo $nome; ?>">
        <input class="text-success  text-center" name="codigo" type="hidden" id="codigoALT" value = "<?php echo $codigo; ?>"><br>
        Categoria<br><input class="text-success  text-center" name="categoria" type="text" id="categoriaALT" value = "<?php echo $categoria; ?>"><br>
        Carga Horaria<br><input class="text-success  text-center" name="ch" type="number" id="chALT" value = "<?php echo $ch; ?>" ><br> 
        Ativa <br><input class="text-success  text-center" name="ativa" type="checkbox" id="ativaALT" value = "1" <?php if ($ativa != 0) echo "checked" ?> ><br> 

        <input name="idCurso" class="text-success center-block "  type="hidden" id="idCursoALT" value ="<?php echo $idCurso; ?>">
        <input name="idDisciplina" class="text-success center-block "  type="hidden" id="idDisciplinaALT" value ="<?php echo $idDisciplina; ?>">
        <br>
<!--        <input type="submit" name="submit" class="alert-success" value="Alterar">-->
        <input type="button" onclick="disciplinaAlterada()" name="submit" class="alert-success" value="Alterar">
    </form>
</center>



