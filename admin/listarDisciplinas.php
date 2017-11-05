<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


include_once '../classes/ListarDisciplinas.php';
include_once '../classes/BD/crudPDO.php';



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
        </script>

    </head>

    <body class="bg-warning">

        <div class="row">
            <div class="col-lg-2">
                <center>
                    <div class="navbar navbar-fixed-top"  ng-hide="form"  style="margin-right: 80%">

                        <div class="navbar-header">

                            <div id ="menu" class="nav navbar-left ">
                                <ul class="nav navbar-left" style="margin-top: 10px; margin-left: 10px;" >
                                    <li class=" dropdown" style="margin-right: 10px; ">
                                        <br><br><br>
                                        <a href="#" class="dropdown-toggle btn-primary btn-lg" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Disciplinas <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <center>

                                                <div>
                                                    <!--                                                    <br>
                                                                                                        <li ><button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#mostrarDisciplinas">Mostrar Disciplinas</button></li>-->
                                                    <br>
                                                    <li><button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#modalDisciplina">Nova Disciplina</button></li>
                                                    <br>
                                                    <li><button class="dropdown-toggle btn-primary" type="button" onclick="window.location.href = 'escrevendoProlog.php?idCurso=<?php echo $id_curso; ?>&codigo=<?php echo $codCurso; ?>&nomeCurso=<?php echo $nomeCurso; ?>'"> Cadastrar Requisitos</button></li>
                                                    <br>
                                                </div>
                                            </center>
                                        </ul>
                                    </li>

                                    <li style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" data-toggle="modal" data-target="#modalListarCursos">Curso</button></li>

                                    <li style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" onclick="window.location.href = 'lerCSV.php?idCurso=<?php echo $id_curso; ?>'"> Inserir Histórico</button></li>

                                    <li style="margin-top: 10px;"><button type="button" class="bg-info  btn-lg" onclick="window.location.href = 'index.php'"> Voltar</button></li>
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
                        <tr  class = "alert-warning ">
                            <th>Código</th><th>Nome</th><th>Categoria</th><th>Carga Horária</th><th>Horários</th><th>Excluir</th>              
                        </tr> 
                        <?php
                        $listDisciplinas->listar($id_curso);
                        ?>

                    </table>  

                </div>
                <br>
                <br>
                <center>
            </div>
        </div>
        <div class="row">

            <div>
                <center>
                    <button  class="btn btn-primary btn-lg" ng-hide="form" ng-click="form = true;">Nova Disciplina</button>
                </center>
            </div>
            <br>
            <div  class="container  bg-info" ng-show="form">
                <center>
                    <form id="curso"  name="curso" method="post" action="inserirDisciplina.php">

                        <table class="table table-condensed bg-info"> 
                            <tr class="text-center">
                                <th>Nome</th><th>Código</th><th>Categoria</th><th>Carga Horária</th><th>Ativa</th>   
                            </tr>
                            <tr>
                                <td><input name="nome" class="text-success center-block " ng-model="novoNome" type="text" id="nome" value=""></td>
                                <td><input class="text-success" name="codigo" type="text" id="codigo" ng-model="novoCodigo"value = ""></td>
                                <td><input class="text-success" name="categoria" type="text" id="categoria" ng-model="novaCategoria" value = ""></td>
                                <td><input class="text-success" name="CH" type="number" id="CH" ng-model="novaCH" value = ""> </td>
                                <td><input class="text-success" name="ativa" type="checkbox" id="ativa" ng-model="novaAtiva" value = "1" ?></td>

                            </tr>


                        </table>
                        <input name="codCurso" class="text-success center-block "  type="hidden" id="codCurso" value ="<?php echo $codCurso; ?>" >
                        <input name="nomeCurso" class="text-success center-block "  type="hidden" id="nomeCurso" value ="<?php echo $nomeCurso; ?>">
                        <br>
                        <label>Inserir disciplina {{novoNome}}-{{novoCodigo}}, carga horária de {{novaCH}} horas </label>
                        <input type="submit" name="submit" class="btn btn-success btn-sm" value="inserir">
                    </form>
                    <button class="btn btn-danger btn-sm" ng-click="form = false;">Cancelar</button>

                    <br>
                </center>
            </div>
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
                        <div class="modal-header bg-success">
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











                <div  class="modal fade" id="modalDisciplina" ng-controller="MeuController">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                                <h4 ng-app="Disciplina" class="modal-title">{{nomeDisciplina}}</h4>
                            </div>
                            <div class="modal-body">
                                <center>
                                    <form id="curso" class="container-fluid bg-info" name="curso" method="post" action="inserirDisciplina.php">
                                        Inserir Disciplina<br><br>
                                        Nome<br><input name="nome" class="text-success center-block " ng-model="nomeDisciplina" type="text" id="nome" value=""><br>
                                        Cógido<br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = ""><br>
                                        Categoria<br><input class="text-success center-block" name="categoria" type="text" id="categoria" value = ""><br>
                                        Carga Horaria<br><input class="text-success center-block" name="CH" type="number" id="CH" value = ""> 
                                        Ativa <br><input class="text-success  text-center" name="ativa" type="checkbox" id="ativa" value = "1" ?> <br> 
                                        <input name="codCurso" class="text-success center-block "  type="hidden" id="codCurso" value ="<?php echo $codCurso; ?>" >
                                        <input name="nomeCurso" class="text-success center-block "  type="hidden" id="nomeCurso" value ="<?php echo $nomeCurso; ?>">
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




                

         





    </body>
</html>



