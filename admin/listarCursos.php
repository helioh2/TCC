<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include_once '../classes/ListarCursos.php';
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Curso</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body class="bg-info">
        <?php
        $listCursos = new ListarCursos();
        ?>
        
    <table class="table bg-info" >
        <tr  class = "alert-success ">
            <th>Código</th><th>Alterar</th><th>Nome</th>
        </tr> 
        <?php
        $listCursos->listar();
        ?>

    </table>   
    <center><br><br><br>
        <form id="curso" class="container-fluid " name="curso" method="get" action="listarDisciplinas.php">
            Procurar
            <br><input name="nome" class="text-success center-block "  type="hidden" id="nome" value = ""><br>
            Cógido do Curso<br><br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = "">
            <br><input type="submit" name="submit" class="alert-success" value="Ok">
        </form>
        <button type="button" class="alert-info center-block " onclick="window.location.href = 'index.php'"> Voltar</button>
    </center>
     




</body>
</html>
