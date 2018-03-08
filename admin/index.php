<?php
session_start();
$nomeUsuario = $_SESSION["usuario"]['nome'];
$id_usuario = $_SESSION["usuario"]['id'];
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

            function compartilhar(idCurso) {
                $('#modalListarCursos').modal('hide');
                $.ajax({
                    type: 'POST',
                    url: "../ajax/listarUsuariosAjax.php",
                    data: {idCurso: idCurso}

                }).done(function (data) {
                    $("#corpoModal").html(data);
                    $('#modal').modal('show');

                });

            }

            function  finalizarCompartilhamento(idCurso, idConvidado) {
                $("#modal").modal('hide');
                $.ajax({
                    type: 'POST',
                    url: "compartilhar.php",
                    data: {idCurso: idCurso, idConvidado: idConvidado}

                }).done(function (data) {
                    $("#corpoModal").html(data);
                    alert(data);
                    atualizar();

                });


            }
            function alterarImagem(num) {
                verificarLogado();
                if (num === 1) {
                    document.getElementById('imagem').src = 'img/voltar.png';

                } else if (num === 0) {
                    document.getElementById('imagem').src = 'img/logo.png';

                } else if (num === 2) {
                    document.getElementById('imagemCentro').src = 'img/curso.png';

                } else if (num === 3) {
                    document.getElementById('imagemCentro').src = 'img/curso.png';

                } else if (num === 4) {
                    document.getElementById('imagemCentro').src = 'img/logo.png';

                }
            }


        </script>




    </head>

    <body class="bg-warning">
        <br>
    <center>
        <div class="col-lg-10 col-sm-8">
            <br>
            <img id="imagemCentro" src="img/logo.png" height="60" width="140">
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
            <img id="imagem" src="img/logo.png" height="50" width="120">
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
            <div class="modal-lg bg-warning">
                <div class="modal-content">
                    <div class="modal-header bg-warning">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <h4 id="tituloModal" class="modal-title bg-warning">Selecionar Curso: </h4>
                    </div>

                    <div class="modal-body bg-warning">
                        <center>

                            <?php
                            $listCursos->listar();
                            ?>
                       
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