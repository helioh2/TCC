<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->



<html>
    <head>
        <meta charset="UTF-8">
        <title>Recomendações de Disciplinas</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body class="bg-primary">
        <?php
        ?>
    <center><br><br><br>
        <form id="categorias" class="bg-primary container-fluid " name="possibilidades" method="post" action="recomendacao.php">
            <label class="text-uppercase">GRR</label>
            <br><input name="grr" class="text-success text-center"  type="text" id="grr" value = ""><br>
<!--            <br><input class="text-success center-block" name="horas" type="number" id="horas" value = "">-->
            <br><input type="submit" name="submit" class="btn btn-default" value="Enviar">
        </form>
    </center>




</body>
</html>
