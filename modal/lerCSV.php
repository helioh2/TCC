<?php
require_once '../classes/BD/crudPDO.php';
include_once '../admin/modal.php';
$idCurso = $_POST["idCurso"];

$fetch = selecionarWHERE("curso", array("nome"), "id= '$idCurso' LIMIT 1");
foreach ($fetch as $f) {
    $nomeCurso = $f["nome"];
}

$fetch = selecionarWHERE("curso", array('codigo'), "id = $idCurso LIMIT 1");
foreach ($fetch as $f) {
    $codCurso = $f['codigo'];
}
?>


<script>
    function setaDadosModal(valor) {
        document.getElementById('nome').value = valor;
    }

//            function alterarCurso(id) {
//                $('#modalListarCursos').modal('hide');
//
//                $.ajax({
//                    type: 'POST',
//                    url: "modalAlterarCurso.php",
//                    data: {idCurso: id}
//                }).done(function (data) {
//
//                    $("#corpoModal").html(data);
//
//
//                });
//                $('#modal').modal('show');
//
//            }
</script>







<!--            <div class="col-lg-2">
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
                                                                                                        <br>
                                                                                                        <li ><button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#mostrarDisciplinas">Mostrar Disciplinas</button></li>
                                                    <br>
                                                    <li><button class="dropdown-toggle btn-primary" data-toggle="modal" data-target="#modalDisciplina">Nova Disciplina</button></li>
                                                    <br>
                                                    <li><button class="dropdown-toggle btn-primary" type="button" onclick="window.location.href = 'escrevendoProlog.php?idCurso=<?php echo $idCurso; ?>&codigo=<?php echo $codCurso; ?>&nomeCurso=<?php echo $nomeCurso; ?>'"> Cadastrar Requisitos</button></li>
                                                    <br>
                                                </div>
                                            </center>
                                        </ul>
                                    </li>

                                    <li style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" data-toggle="modal" data-target="#modalListarCursos">Curso</button></li>

                                    <li style="margin-top: 10px;"><button type="button" class="btn-primary  btn-lg" onclick="window.location.href = 'lerCSV.php?idCurso=<?php echo $id_curso; ?>'"> Inserir Histórico</button></li>

                                    <li style="margin-top: 10px;"><button type="button" class="bg-info  btn-lg" onclick="window.location.href = 'listarDisciplinas.php?codigo=<?php echo $codCurso; ?>'"> Listar Disciplinas</button></li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </center>
            </div>-->
<center>
    <form class="text-uppercase" action="upload.php" enctype="multipart/form-data" method="POST">
        <br>
        <label class="text-uppercase">Enviar o arquivo: </label>
        <br>
        <input name="arquivo" id="arquivo" class="alert-warning" type="file" />

        <input type="hidden" name="idCurso" id="idCurso" value="<?php echo $idCurso; ?>"/>
        <br>
        <input type="submit" class="bg-success Athena_button_book" value="Enviar" /> 
    </form>
    <br>
    <button type="button" class="btn-lg Athena_button_book_large text-uppercase" onclick="window.location.href = 'CSV/modelo/modelo.xlsx'"> Modelo da Planília</button>
</center>




<!--
        //<?php
//        include_once '../classes/ListarCursos.php';
//        $listCursos = new ListarCursos();
//        
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


//<?php
//$listCursos->listar();
//
?>


                            </center>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                        </div>
                    </div>
                </div>
        </div>-->














<!--
        <div  class="modal fade" id="modalDisciplina" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>

                    </div>
                    <div class="modal-body">
                        <center>

                            <form id="curso" class="container-fluid bg-info" name="curso" method="post" action="inserirDisciplina.php">
                                Inserir Disciplina<br><br>
                                Nome<br><input name="nome" class="text-success center-block " ng-model="nomeDisciplina" type="text" id="nome" value=""><br>
                                Cógido<br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = ""><br>
                                Categoria<br><input class="text-success center-block" name="categoria" type="text" id="categoria" value = ""><br>
                                Carga Horaria<br><input class="text-success center-block" name="CH" type="number" id="CH" value = ""> 
                                Ativa <br><input class="text-success  text-center" name="ativa" type="checkbox" id="ativa" value = "1" > <br> 
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
        </div>-->

