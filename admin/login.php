<?php
include './modal.php';
?>

<html >
    <head>
        <meta charset="UTF-8">
        <title id="titulo" >Login</title>
        <link href="../css/bootstrap.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $.ajax({
                    url: "verificarLogin.php",
                }).done(function (data) {
                    if (data === 'logado') {
                        alert('Você já está logado');
                        location.href = './index.php';
                    }
                });
            });

            function login() {
                var user = $('#usuario').val();
                var senha = $('#senha').val();
                var novaSenha = $('#novaSenha').val();
                var novaSenha2 = $('#novaSenha2').val();
                if (novaSenha !== novaSenha2) {
                    alert("senhas não conferem");
                } else {
                    $.ajax({
                        type: 'POST',
                        url: "fazerLogin.php",
                        data: {user: user, senha: senha, novaSenha: novaSenha}
                    }).done(function (data) {
                        if (data === 'erro') {
                            alert('você não possui acesso ' + user);

                        } else {
                            alert('seja bem vindo ' + user);

                            location.href = './index.php';

                        }

                    });
                }

            }
            function alterarSenha() {
                $("#divNova").show();
                $("#btnAlterar").hide();


            }

            function modalNovoUsuario() {

                $('#modal').modal('hide');
                $.ajax({
                    url: "../modal/novoUsuarioModal.php",
                }).done(function (data) {

                    $("#corpoModal").html(data);
                });
                $('#modal').modal('show');

            }

            function inserirUsuario() {
                var nome = $('#nomeModal').val();
                var email = $('#emailModal').val();
                var senha = $('#senhaModal').val();
                var novaSenha = $('#novaSenhaModal').val();
                if (senha !== novaSenha || novaSenha === '') {
                    alert('senhas não conferem');
                } else {
                    if (nome === '') {
                        alert('Digite um nome');
                    } else {
                        $.ajax({
                            type: 'POST',
                            url: "novoUsuario.php",
                            data: {nome: nome, email: email, senha: senha, novaSenha: novaSenha}
                        }).done(function (data) {
                            $("#modal").hide();
                            location.href = './index.php';

                        });
                    }
                }
            }

        </script>
    </head>

    <body class="bg-warning">

        <div class="row">

            <div style="position: absolute; top: 10px; padding-right: 70%">
                <center>
                    <img src="img/nome.png" width="65%" />
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-10 col-sm-8">
                <br>

                <br>
                <center>
                    USUÁRIO:<br><input class="text-center text-warning" type="text" id="usuario"/><br>
                    <br>
                    SENHA:<br><input class="text-center text-warning" type="password" id="senha" /><br>
                    <br>
                    <div hidden="true" id='divNova'>

                        NOVA SENHA:<br><input id='novaSenha' type="password" />
                        <br>
                        <br>
                        REPITA NOVA SENHA:<br><input id='novaSenha2' type="password" />
                    </div>
                    <br>

                    <button class="btn btn-sm btn-success"  onclick="login()">ACESSAR</button>

                    <br>

                    <br>
                    <button id="btnAlterar" onclick="alterarSenha()" class="btn btn-sm btn-info">ALTERAR SENHA</button>
                    <br>
                    <br>
                    </div>
                </center>
                <div class="col-lg-2 col-sm-4">
                    <br>
                    <br>
                    <center>
                        <br>
                        <button class="btn btn-lg btn-success"  onclick="modalNovoUsuario()">CADASTRE-SE</button>
                    </center>
                </div>
                <br>
            </div>

            <br>
            <div style="position: absolute; bottom: 10; width: 100%; padding-left: 80%">
                <center>
                    <label>Desenvolvido por:<br>
                        <a href="http://lattes.cnpq.br/3657386675052708">Daniel Antonio Karling</a></label>
                </center>
            </div>



    </body>




</html>