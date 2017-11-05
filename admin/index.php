<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<html ng-app="listarCursos">
    <head>
        <meta charset="UTF-8">
        <title>Administração</title>
        <link href="../css/bootstrap.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <script src="../js/angular.min.js" type="text/javascript"></script>

        <script type="text/javascript">
            angular.module('listarCursos', []).controller('Controller', function ($scope) {
               
                $scope.codCurso = '';
                $scope.nomeCurso = '';

            });
            
        
        </script>




    </head>
    <body class="bg-warning">
        <br><br>
    <center>
        <button class="bg-success  btn-lg" data-toggle="modal" data-target="#novoCurso">Cadastrar Curso</button>

        <br><br>


        <button class="bg-success  btn-lg" data-toggle="modal" data-target="#modalListarCursos">Visualizar Curso</button>
    </center>


    <?php
    include_once '../classes/ListarCursos.php';
    $listCursos = new ListarCursos();
    ?>



    <center>
        <div ng-controller="Controller" class="modal fade" id="modalListarCursos">
            <div class="modal-lg bg-info">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <h4 class="modal-title bg-info">Selecionar Curso</h4>
                    </div>
                    <div class="modal-body bg-info">
                        <center>

                            <?php
                            $listCursos->listar();
                            ?>

                            <br>
                            <form id="curso" class="container-fluid " name="curso" method="get" action="listarDisciplinas.php">
                                <label>Procurando por: {{codCurso}}</label>
                                <input name="nome" class="text-success center-block "  type="hidden" id="nome" value = ""><br>
                                <label>Cógido do Curso:</label><input ng-model="codCurso" class="text-success center-block" name="codigo" type="text" id="codigo" value = "">
                                <br><input type="submit" name="submit" class="alert-success" value="Ok">
                            </form>



                        </center>
                    </div>
                    <div class="modal-footer  bg-info">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>








        <div ng-controller="Controller" class="modal fade" id="novoCurso">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header  bg-info">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <center>
                            <h4 class="modal-title  bg-info">{{nomeCurso}}</h4>
                        </center>
                    </div>
                    <div class="modal-body bg-info">
                        <center>
                            <form id="curso" class="container-fluid "  name="curso" method="get" action="inserirCurso.php">
                                <label>Nome</label><br><input ng-model="nomeCurso" name="nome" class="text-success center-block "  type="text" id="nome" value = ""><br>
                                <label>Cógido</label><br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = ""><br>
                                <label>N° de Semanas por Semestre</label><br>
                                <input class="text-success text-center" name="semanas" type="number" id="semanas" value = "0">
                                <br><br>
                                <input type="submit" name="submit" class="alert-success" value="inserir">
                            </form>
                        </center>
                    </div>
                    <div class="modal-footer  bg-info">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </center>
</body>



</html>