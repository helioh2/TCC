<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Administração</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>



    </head>
    <body class="bg-info">
        <br><br>
    <center>
        <button class="alert-success" data-toggle="modal" data-target="#novoCurso">Cadastrar Curso</button>

        <br><br>


        <button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#modalListarCursos">Visualizar Curso</button>
    </center>


    <?php
    include_once '../classes/ListarCursos.php';
    $listCursos = new ListarCursos();
    ?>



    <center>
        <div class="modal fade" id="modalListarCursos">
            <div class="modal-lg bg-info">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <h4 class="modal-title text-info bg-info">Selecionar Curso</h4>
                    </div>
                    <div class="modal-body bg-warning">
                        <center>

                                 
                                <?php
                                $listCursos->listar();
                                ?>
                              

                            <br>
                            <form id="curso" class="container-fluid " name="curso" method="get" action="listarDisciplinas.php">
                                Procurar
                                <br><input name="nome" class="text-success center-block "  type="hidden" id="nome" value = ""><br>
                                Cógido do Curso<br><br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = "">
                                <br><input type="submit" name="submit" class="alert-success" value="Ok">
                            </form>



                        </center>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>








        <div class="modal fade" id="novoCurso">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <center>
                            <h4 class="modal-title">Novo Curso</h4>
                        </center>
                    </div>
                    <div class="modal-body">
                        <center>
                            <form id="curso" class="container-fluid " name="curso" method="get" action="inserirCurso.php">
                                Nome<br><input name="nome" class="text-success center-block "  type="text" id="nome" value = ""><br>
                                Cógido<br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = "">
                                Número de Semanas por Semestre<br>
                                <input class="text-success center-block" name="semanas" type="number" id="semanas" value = "0">
                                <br>
                                <input type="submit" name="submit" class="alert-success" value="inserir">
                            </form>

                        </center>


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </center>
</body>



</html>