<?php
include_once '../classes/ListarDisciplinas.php';
include_once '../classes/BD/crudPDO.php';
include_once './modal.php';




$codCurso = $_GET["codigo"];


$existe = numLinhasSelecionarWHERE("curso", array("ID"), "codigo = '$codCurso'");
if ($existe == 0) {

    echo "<script>alert('Curso não encontrado');</script>";
    print "<script type = 'text/javascript'> location.href = './index.php' </script>";
    die();
}
$id_curso = "";
$fetch = selecionarWHERE("curso", array("id"), "codigo = '" . $codCurso . "' limit 1;");
foreach ($fetch as $f) {
    $id_curso = $f["id"];
}
$listDisciplinas = new ListarDisciplinas($id_curso);
$fetch = selecionarWHERE("curso", array("nome"), "id= '$id_curso' LIMIT 1");
foreach ($fetch as $f) {
    $nomeCurso = $f["nome"];
}
?>

<html ng-app="Disciplina" >
    <head >
        <meta charset="UTF-8">
        <title><?php echo $codCurso . " - " . $nomeCurso; ?></title>
        <link href="../css/tcc.css" rel="stylesheet">
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/angular.min.js"></script>
        <script type="text/javascript">
            angular.module('Disciplina', []).controller('MeuController', function ($scope) {
                $scope.nomeDisciplina = '';

                $scope.novoNome = '';
                $scope.novoCodigo = '';
                $scope.novaCH;
                $scope.novaAtiva;

                $scope.form = false;


            });


            function  verificarLogado() {
                $.ajax({
                    type: 'POST',
                    url: "verificarLoginCurso.php",
                    data: {idCurso: <?php echo $id_curso; ?>}
                }).done(function (data) {
                    if (data === 'erro') {
                        alert('Você não está logado');
                        location.href = './login.php';
                    }

                });
            }

            $(document).ready(function () {


                $.ajax({
                    url: "verificarLogin.php",
                }).done(function (data) {
                    if (data === 'erro') {
                        alert('Você não está logado');
                        location.href = './login.php';
                    } else {
                        atualizar();
                    }
                });



            });


            function inserirHistorico() {

                $.ajax({
                    type: 'POST',
                    url: "verificarLoginCurso.php",
                    data: {idCurso: <?php echo $id_curso; ?>}
                }).done(function (data) {
                    if (data === "logado") {
                        $('#modalListarCursos').modal('hide');
                        $.ajax({
                            type: 'POST',
                            url: "../modal/lerCSV.php",
                            data: {idCurso: <?php echo $id_curso; ?>}
                        }).done(function (data) {

                            $("#corpoModal").html(data);


                        });
                        $('#modal').modal('show');

                    } else {
                        alert(data);
                        location.href = './login.php';
                    }
                });



            }
            function pesquisar() {
                verificarLogado();
                atualizar();

            }

            function atualizar() {

                var nome = document.getElementById("nomeDigitado").value;
                var idCurso = document.getElementById("idCurso").value;
                //var nome = "daniel";
                //$nome = document.corpo.linha.aler-warning.nome;
                $.ajax({
                    type: 'POST',
                    url: "../ajax/listarDiscentesAjax.php",
                    data: {idCurso: idCurso, nome: nome},
                }).done(function (data) {

                    $(".alert-warning").html(data);

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
                    document.getElementById('imagem').src = 'img/disciplinas.png';

                } else if (num === 2) {
                    document.getElementById('imagem').src = 'img/curso.png';

                } else if (num === 3) {
                    document.getElementById('imagem').src = 'img/historico.png';

                } else if (num === 4) {
                    document.getElementById('imagem').src = 'img/voltar.png';

                } else if (num === 5) {
                    document.getElementById('imagem').src = 'img/livro.png';

                } else if (num === 0) {
                    document.getElementById('imagem').src = 'img/default.png';

                }
            }

            function listaCompartilhado() {
                $.ajax({
                    type: 'POST',
                    url: "../modal/modalListaCompartilhado.php",
                    data: {idCurso: <?php echo $id_curso; ?>}

                }).done(function (data) {
                    $("#corpoModal").html(data);
                    $('#modal').modal('show');



                });

            }
            
            function descompartilhar(idConvidado) {
                $.ajax({
                    type: 'POST',
                    url: "descompartilhar.php",
                    data: {idConvidado: idConvidado, idCurso: <?php echo $id_curso; ?>}

                }).done(function (data) {

                    $('#modal').modal('hide');
                    alert(data);
                    atualizar();



                });

            }


        </script>

    </head>

    <body class="bg-warning">

        <div class="row">
            <div class="col-lg-2">
                <center>
                    <div  class="navbar navbar-fixed-top"  ng-hide="form"  style="margin-right: 80%">

                        <div class="navbar-header">

                            <div id ="menu" class="nav navbar-left ">
                                <ul class="nav navbar-left" style="margin-top: 10px; margin-left: 10px;" >
                                    <br>
                                    <li>
                                        <img id="imagem" src="img/default.png" height="100" width="140">
                                    </li>
                                    <br>
                                    <li>
                                        <label class="text-uppercase">Pesquisar: </label> 
                                        <br><input type="text" class="text-warning"name="nomeDigitado" id="nomeDigitado" onkeyup="pesquisar()"/>
                                        <br> <input type="hidden" name="idCurso" id="idCurso" value="<?php echo $id_curso; ?>"/>
                                    </li>

                                    <li class=" dropdown" style="margin-right: 10px; ">
                                        <br>
                                        <a  onmouseover="alterarImagem(1)" onmouseout="alterarImagem(0)" href="#" class="dropdown-toggle btn-primary btn-lg" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Disciplinas <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <center>

                                                <div>
                                                    <!--                                                    <br>
                                                                                                        <li ><button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#mostrarDisciplinas">Mostrar Disciplinas</button></li>-->
                                                    <br>
                                                    <!--                                                    <li><button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#modalDisciplina">Nova Disciplina</button></li>-->
                                                    <li><button onmouseover="alterarImagem(1)" onmouseout="alterarImagem(0)" class="dropdown-toggle btn-primary" onclick="novaDisciplinaModal()">Nova Disciplina</button></li>
                                                    <br>
                                                    <li><button onmouseover="alterarImagem(1)" onmouseout="alterarImagem(0)" class="dropdown-toggle btn-primary" type="button" onclick="window.location.href = '../requisitos/cadastrarRequisitos.php?idCurso=<?php echo $id_curso; ?>&codigo=<?php echo $codCurso; ?>&nomeCurso=<?php echo $nomeCurso; ?>'"> Cadastrar Requisitos</button></li>
                                                    <br>
                                                </div>
                                            </center>
                                        </ul>
                                    </li>

                                    <li class=" dropdown" style="margin-right: 10px; ">
                                        <br>
                                        <a  onmouseover="alterarImagem(2)" onmouseout="alterarImagem(0)" href="#" class="dropdown-toggle btn-primary btn-lg" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Curso <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <center>


                                                <li onmouseover="alterarImagem(2)" onmouseout="alterarImagem(0)" style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" data-toggle="modal" data-target="#modalListarCursos">Listar Cursos</button></li>

                                                <li onmouseover="alterarImagem(2)" onmouseout="alterarImagem(0)" style="margin-top: 10px;"><button type="button" class="bg-primary  btn-lg" onclick="listaCompartilhado()"> Compartilhado</button></li>
                                            </center>
                                        </ul>
                                    </li>


<!--                                    <li style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" onclick="window.location.href = 'lerCSV.php?idCurso=<?php echo $id_curso; ?>'"> Inserir Histórico</button></li>-->
                                    <li onmouseover="alterarImagem(3)" onmouseout="alterarImagem(0)" style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" onclick="inserirHistorico()"> Inserir Histórico</button></li>

                                    <li onmouseover="alterarImagem(5)" onmouseout="alterarImagem(0)" style="margin-top: 10px;"><button type="button" class="bg-primary  btn-lg" onclick="window.location.href = 'listarDisciplinas.php?codigo=<?php echo $codCurso; ?>'">Listar Disciplinas</button></li>

                                    <li onmouseover="alterarImagem(4)" onmouseout="alterarImagem(0)" style="margin-top: 10px;"><button type="button" class="bg-info  btn-lg" onclick="window.location.href = 'index.php'"> Voltar</button></li>
                                    <br>

                                </ul>

                            </div>
                        </div>

                    </div>
                </center>
            </div>


            <div ng-controller="MeuController" class="col-lg-10">
                <br><br><br>
                <div id="listaDisciplinas" >




                    <table class="table bg-warning" >
                        <thead>
                            <tr>
                                <th>ID</th><th>Nome</th><th>Matrícula</th><th>Ano</th><th>Atividade Curricular</th><th>Media Final</th><th>Situação</th><th>Período</th><th>Carga Horária Total</th><th>Ano Ingresso</th><th>Forma Evasão</th><th>Ano Evasão</th><th>Sexo</th>
                            </tr> 
                        </thead>
                        <tbody class = "alert-warning">


                            <!--                            ajax-->

                        </tbody>
                    </table>  

                </div>
                <br>
                <br>
                <center>
            </div>
        </div>
        <div class="row">

        </div>





        <?php
        include_once '../classes/ListarCursos.php';
        $listCursos = new ListarCursos();
        ?>


        <div class="modal fade" id="modalListarCursos">

            <center>
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


                            </center>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                        </div>
                    </div>
                </div>
        </div>




        <div class="modal fade" id="mostrarDisciplinas">

            <center>
                <div class="modal-lg bg-info">
                    <div class="modal-content">
                        <div class="modal-header bg-info">
                            <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                            <h4 class="modal-title bg-success">Disciplinas</h4>
                        </div>
                        <div class="modal-body bg-info
                             ">
                            <center>
                                <table class="table bg-info" >
                                    <tr  class = "alert-success ">
                                        <th>Código</th><th>Alterar</th><th>Nome</th><th>Categoria</th><th>Carga Horária</th><th>Horários</th>              
                                    </tr> 
                                    <?php
                                    $listDisciplinas->listar($id_curso);
                                    ?>

                                </table>  
                            </center>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                        </div>
                    </div>
                </div>
        </div>





</html>



