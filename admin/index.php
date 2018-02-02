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
        <title id="titulo" >Administração</title>
        <link href="../css/bootstrap.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <script src="../js/angular.min.js" type="text/javascript"></script>

        <script type="text/javascript">
            angular.module('listarCursos', []).controller('Controller', function ($scope) {

                $scope.codCurso = '';
                $scope.nomeCurso = '';

            });


            function novoCurso() {
                verificarLogado();

                $.ajax({
                    url: "../modal/novoCursoModal.php",
                }).done(function (data) {

                    $("#corpoModal").html(data);


                });
                $('#modal').modal('show');

            }
            $(document).ready(function () {
                $.ajax({
                    url: "verificarLogin.php",
                }).done(function (data) {
                    if (data === 'erro') {
                        alert('Você não está logado');
                        location.href = './login.php';
                    }
                });

            });
            function alterarCurso(id) {
                //desaparecer o modal listar 
                verificarLogado();
                $('#modalListarCursos').modal('hide');
                $.ajax({
                    type: 'POST',
                    url: "../modal/modalAlterarCurso.php",
                    data: {idCurso: id}
                }).done(function (data) {

                    $("#corpoModal").html(data);
                });
                $('#modal').modal('show');
            }
            function logout() {
                $.ajax({
                    type: 'POST',
                    url: "logout.php",
                }).done(function (data) {

                    location.href = './login.php';
                });
            }

            function  verificarLogado() {
                $.ajax({
                    url: "verificarLogin.php",
                }).done(function (data) {
                    if (data === 'erro') {
                        alert('Você não está logado');
                        location.href = './login.php';
                    }

                });
            }
            function alterarImagem(num) {
                verificarLogado();
                if (num === 1) {
                    document.getElementById('imagem').src = 'img/voltar.png';

                } else if (num === 0) {
                    document.getElementById('imagem').src = 'img/default.png';

                } else if (num === 2) {
                    document.getElementById('imagemCentro').src = 'img/curso.png';

                } else if (num === 3) {
                    document.getElementById('imagemCentro').src = 'img/curso.png';

                } else if (num === 4) {
                    document.getElementById('imagemCentro').src = 'img/default.png';

                }
            }


        </script>




    </head>

    <?php
    session_start();
    $nomeUsuario = $_SESSION["usuario"]['nome'];
    ?>
    <body class="bg-warning">
        <br>
    <center>
        <div class="col-lg-10 col-sm-8">
            <br>
            <img id="imagemCentro" src="img/default.png" height="80" width="100">
            <br>
            <br>

            <button onmouseover="alterarImagem(2)" onmouseout="alterarImagem(4)" class="bg-success  btn-lg" onclick="novoCurso()">Cadastrar Curso</button>
            <br><br>

            <button onmouseover="alterarImagem(3)" onmouseout="alterarImagem(4)" class="bg-success  btn-lg" data-toggle="modal" onmouseover="verificarLogado()" data-target="#modalListarCursos">Visualizar Curso</button>
            <br>
        </div>
        <div class="col-lg-2 col-sm-4">
            <br>
            <label id="user" class="text-uppercase text-success"><?php echo $nomeUsuario; ?></label>
            <br>
            <img id="imagem" src="img/default.png" height="50" width="70">
            <br>
            <br>
            <button onmouseover="alterarImagem(1)" onmouseout="alterarImagem(0)" id='logout' class="btn btn-md btn-danger" onclick="logout()">LOGOUT</button>
            <br><br>
        </div>
    </center>


    <?php
    include_once './modal.php';
    include_once '../classes/ListarCursos.php';
    $listCursos = new ListarCursos();
    ?>



    <center>
        <div ng-controller="Controller" class="modal modal-dismiss" id="modalListarCursos">
            <div class="modal-lg bg-info">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <h4 id="tituloModal" class="modal-title bg-info">Selecionar Curso: </h4>
                    </div>

                    <div class="modal-body bg-info">
                        <center>

                            <?php
                            $listCursos->listar();
                            ?>
                            <!--
                                                        <br>
                                                        <form id="curso" class="container-fluid " name="curso" method="get" action="listarDisciplinas.php">
                                                            <label>Procurando por: {{codCurso}}</label>
                                                            <input name="nome" class="text-success center-block "  type="hidden" id="nome" value = ""><br>
                                                            <label>Cógido do Curso:</label><input ng-model="codCurso" class="text-success center-block" name="codigo" type="text" id="codigo" value = "">
                                                            <br><input type="submit" name="submit" class="alert-success" value="Ok">
                                                        </form>
                            -->


                        </center>
                    </div>
                    <div class="modal-footer  bg-info">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>








        <!--        <div ng-controller="Controller" class="modal fade" id="novoCurso">
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
                </div>-->
    </center>
</body>



</html>