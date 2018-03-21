<?php
require_once '../classes/BD/crudPDO.php';
$fetch = selecionar("periodo", array('id', 'nome'));
?>


<center>
    <form id="curso" class="container-fluid "  name="curso" method="get" action="../admin/inserirCurso.php">
        <label>Nome</label><br><input ng-model="nomeCurso" name="nome" class="text-success center-block "  type="text" id="nome" value = ""><br>
        <label>Cógido</label><br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = ""><br>
        <label>N° de Semanas por Semestre</label><br>
        <input class="text-success text-center" name="semanas" type="number" id="semanas" value = "0">
        <br>
        <br>
        <label>Turno</label><br>
        <select required="true" class='bg-warning' style="border: white;" name="idPeriodo[]" size="3">
            <?php
            foreach ($fetch as $f) {
                echo "<option class='text-uppercase text-primary' value='".$f['id']."'>".$f['nome']."</option>";
            }
            ?>

        </select>
        <br>
        <br>
        <input type = "submit" name = "submit" class = "btn btn-success" value = "inserir">
    </form>
</center>