
<head>
    <meta charset="UTF-8">
    <title>Recomendações de Disciplinas</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <script src="./js/jquery-3.2.0.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>

</head>
<?php
$grr = $_POST["grr"];
require_once './Recomendacao.php';
$recomendacao = new Recomendacao($grr);
$recomendacao->start();
?>

<body class="bg-warning">

    <div class="row">

        <div class="col col-lg-2">
            <center>
                <div class="navbar navbar-fixed-top"  ng-hide="form"  style="margin-right: 80%">

                    <div class="navbar-header">
                        <br>
                        <br>
                        <div id ="menu" class="nav navbar-left ">
                            <ul class="nav navbar-left" style="margin-top: 10px; margin-left: 10px;" >
                                <li style="margin-top: 10px;"><button class="btn-primary btn-lg" data-toggle="modal" data-target="#modalDifs">DIFICULDADE</button></li>
                                <li style="margin-top: 10px;"><button class="btn-primary btn-lg" data-toggle="modal" data-target="#modalMedias">MÉDIAS</button></li>
                                <li style="margin-top: 10px;"><button class="btn-info btn-lg"onclick="window.location.href = 'index.php'">VOLTAR</button></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </center>
        </div>

        <div class="col col-lg-10">
            <table class="table table-striped">
                <tr class="text-center">
                    <td class="alert-info"> Código </td>
                    <td class="alert-info"> Disciplina </td>
                    <td class="alert-info"> Recomendação </td>
                    <td class="alert-info"> Horas de Dedicação Semanal </td>
                    <td class="alert-info"> Horários </td>
                    <td class="alert-info"> Colisão de Horários </td>
                </tr>
                <?php
                foreach ($recomendacao->getRecomendacaoFinal() as $rec) {
                    ?>

                    <tr class="text-center"> 
                        <td  class="text-success" ><?php echo $rec->getCodigo(); ?></td>
                        <td  class="text-success" ><?php echo $rec->getNome(); ?></td>
                        <td  class="text-success" ><?php echo (Integer) $rec->getImportancia() . "%"; ?></td>
                        <td class="text-success"><?php echo (Integer) $rec->getHorasDedicacao(); ?></td>
                        <td class="text-danger">
                            <?php
                            foreach ($rec->getHorarios() as $h) {
                                echo $h . " ";
                            }
                            ?>
                        </td> <td class="text-danger">
                            <?php
                            foreach ($rec->getColisoes() as $col) {
                                $fetch = selecionarWHERE("disciplina", array("NOME"), "CODIGO = '$col' LIMIT 1");
                                foreach ($fetch as $f) {
                                    echo $f["NOME"] . "<br> ";
                                }
                            }
                            ?>
                        </td>
                    </tr>
                    <?php
                }
                ?>

            </table>
        </div>

    </div>
    <br>
    <br>
<center>
    <div class="modal fade" id="modalDifs">
        <div class="modal-lg bg-info">
            <div class="modal-content">
                <div class="modal-header bg-info">
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                    <h4 class="modal-title text-info bg-info">Dificuldade por Categoria</h4>
                </div>
                <div class="modal-body bg-warning">
                    <center>

                        <?php
                        $recomendacao->getListaDificuldade()->imprimeDificuldades();
                        //$recomendacao->getListaDificuldade()->desenhaGraficos();
                        ?>

                        <li style="margin-top: 10px;"><button class="btn-primary btn-lg" data-toggle="modal" data-target="#modalGraf">Gráficos</button></li>


                    </center>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
</center>

<center>
    <div class="modal fade" id="modalGraf">
        <div class="modal-lg bg-info">
            <div class="modal-content">
                <div class="modal-header bg-info">
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                    <h4 class="modal-title text-info bg-info">Gráficos de dificuldades</h4>
                </div>
                <div class="modal-body bg-warning">
                    <center>

                        <?php
                        //$recomendacao->getListaDificuldade()->imprimeDificuldades();
                        $recomendacao->getListaDificuldade()->desenhaGraficos();
                        ?>



                    </center>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
</center>



<center>
    <div class="modal fade" id="modalMedias">
        <div class="modal-lg bg-info">
            <div class="modal-content">
                <div class="modal-header bg-info">
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                    <h4 class="modal-title text-info bg-info">Gráficos de dificuldades</h4>
                </div>
                <div class="modal-body bg-warning">
                    <center>

                        <?php
                        //$recomendacao->getListaDificuldade()->imprimeDificuldades();
                        $recomendacao->getListaDificuldade()->imprimeMediaAprovacao();
                        ?>



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

