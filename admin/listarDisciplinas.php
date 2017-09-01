<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


include_once '../classes/ListarDisciplinas.php';



$codCurso = $_GET["codigo"];


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

<html>
    <head>
        <meta charset="UTF-8">
        <title><?php echo $codCurso . " - " . $nomeCurso; ?></title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <script>
            function setaDadosModal(valor) {
                document.getElementById('nome').value = valor;
            }
        </script>


    </head>


    <body class="bg-info">



        <div class="navbar-wrapper">
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container">
                        <div class="navbar-header">


                            <div id ="menu" class="navbar-collapse collapse">
                                <ul class="nav navbar-nav" style="margin-top: 10px;" >
                                    <li class=" dropdown" style="margin-right: 10px; ">
                                        <a href="#" class="dropdown-toggle bg-primary btn-lg" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Disciplinas <span class="caret"></span></a>
                                        <ul class="dropdown-menu bg-success">
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
                                    <li style="margin-right: 10px;"><button type="button" class="btn-primary  btn-lg" onclick="window.location.href = 'lerCSV.php?idCurso=<?php echo $id_curso; ?>'"> Inserir Histórico</button></li>
                                   
                                    <li style="margin-right: 10px;"><button type="button" class="btn-primary  btn-lg" onclick="window.location.href = 'listarCursos.php'"> Voltar</button></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        

        <br><br><br>

        <div id="listaDisciplinas" class="bg-info">
            <table class="table bg-info" >
                <tr  class = "alert-success ">
                    <th>Código</th><th>Alterar</th><th>Nome</th><th>Categoria</th><th>Carga Horária</th><th>Horários</th>              
                </tr> 
                <?php
                $listDisciplinas->listar($id_curso);
                ?>

            </table>  
        </div>


    <center>
        

































        <center>
            <div class="modal fade" id="mostrarDisciplinas">
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




            <div class="modal fade" id="alt">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                            <h4 class="modal-title">Título da mensagem</h4>
                        </div>
                        <div class="modal-body">
                            <center>
                                <form id="curso" class="container-fluid bg-info" name="curso" method="post" action="alterarDisciplina.php">
                                    Nome<br><input name="nome" class="text-success  text-center"  type="text" id="nome" value = ""><br>
                                    Cógido<br><input class="text-success  text-center" name="codigo" type="text" id="codigo" value = "<?php echo $codigo; ?>"><br>
                                    Categoria<br><input class="text-success  text-center" name="categoria" type="text" id="categoria" value = "<?php echo $categoria; ?>"><br>
                                    Carga Horaria<br><input class="text-success  text-center" name="CH" type="number" id="CH" value = "<?php echo $ch; ?>" ><br> 

                                    <input name="codCurso" class="text-success center "  type="hidden" id="codCurso" value ="<?php echo $codCurso; ?>" >
                                    <input name="nomeCurso" class="text-success center-block "  type="hidden" id="nomeCurso" value ="<?php echo $nomeCurso; ?>">

                                    <input name="idDisciplina" class="text-success center-block "  type="hidden" id="idDisciplina" value ="">

                                    <br>
                                    <input type="submit" name="submit" class="alert-success" value="Alterar">
                                </form>
                            </center>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                        </div>
                    </div>
                </div>
            </div>










            <div class="bg-success">
                <br>







                <div class="modal fade" id="modalDisciplina">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                                <h4 class="modal-title">Título da mensagem</h4>
                            </div>
                            <div class="modal-body">
                                <center>
                                    <form id="curso" class="container-fluid bg-info" name="curso" method="post" action="inserirDisciplina.php">
                                        Inserir Disciplina<br><br>
                                        Nome<br><input name="nome" class="text-success center-block "  type="text" id="nome" value = ""><br>
                                        Cógido<br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = ""><br>
                                        Categoria<br><input class="text-success center-block" name="categoria" type="text" id="categoria" value = ""><br>
                                        Carga Horaria<br><input class="text-success center-block" name="CH" type="number" id="CH" value = ""> 

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




                <br>

                <br>

            </div>
        </center>





    </body>
</html>



