<?php
require_once '../classes/BD/crudPDO.php';
$fetch = selecionar("periodo", array('id', 'nome'));
?>


<center>
    <form id="curso" class="container-fluid text-uppercase"  name="curso" method="get" action="../admin/inserirCurso.php">


        <h4>Nome</h4><input ng-model="nomeCurso" name="nome" class="text-primary center-block "  type="text" id="nome" value = ""><br>
        <h4>Cógido</h4><input class="text-primary center-block" name="codigo" type="text" id="codigo" value = ""><br>
        <h4>N° de Semanas por Semestre</h4>
        <input class="text-primary text-center" name="semanas" type="number" id="semanas" value = "0">
        <h4>Carga Horária</h4>
        <input class="text-primary text-center" name="cargaHoraria" type="number" id="cargaHoraria" value = "0">
        
        <br>
<!--        <div class="panel panel-primary bg-warning" style="margin-left: 30%; margin-right: 30%">-->
            <h4>Turno</h4>
            <select required="true" class='bg-warning text-uppercase btn-default btn-lg' style="border: white;" name="idPeriodo[]" size="4">
                <?php
                foreach ($fetch as $f) {
                    echo "<option class='text-uppercase text-primary ' value='" . $f['id'] . "'>" . $f['nome'] . "</option>";
                }
                ?>

            </select>
            <br>
            <br>
<!--        </div>-->
        <br>

        <input type = "submit" name = "submit" class = "btn btn-md btn-primary text-uppercase" value = "inserir">
        <br>

    </form>
</center>