<head>
    <meta charset="UTF-8">
    <title>Recomendações de Disciplinas</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <script src="./js/jquery-3.2.0.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script type="text/javascript">

        var order = 'rec';
        function atualizar() {
            $.ajax({
                type: 'POST',
                url: "listaRecomendacao.php",
                data: {order: order}
            }).done(function (data) {
                $("#lista").html(data);
            });
        }

        function ordenaRec() {
            order = 'rec';
            atualizar();
        }
        function ordenaColisao() {
            order = 'colisao';
            atualizar();
        }
        function mostrar(cod) {

            var idButton = "#btnHorarios" + cod;
            var idDiv = "#divHorarios" + cod;
            //alert(idButton);
            // alert(idDiv);
            // alert($(idButton).val());
            if ($(idButton).val() === "MOSTRAR") {
                $(idButton).val("ESCONDER");
                $(idButton).html("ESCONDER");
                $(idDiv).show();
            } else {
                $(idButton).val("MOSTRAR");
                $(idButton).html("MOSTRAR");
                $(idDiv).hide();
            }

        }
        function mostrarColisao(cod) {

            var idButton = "#btnColisao" + cod;
            var idDiv = "#divColisao" + cod;
            //alert(idButton);
            // alert(idDiv);
            // alert($(idButton).val());
            if ($(idButton).val() === "MOSTRAR") {
                $(idButton).val("ESCONDER");
                $(idButton).html("ESCONDER");
                $(idDiv).show();
            } else {
                $(idButton).val("MOSTRAR");
                $(idButton).html("MOSTRAR");
                $(idDiv).hide();
            }

        }

        function iluminarColisao(div) {
            var idDiv = "#divColisao" + div;
            var html = $(idDiv).html() + "";
            var colisaoStr = html.replace(/^\s+|\s+$/g, "");
            //alert(html);

            //alert(colisaoStr);
            var listaColisao = new Array();
            listaColisao = colisaoStr.split("<br>");
            console.log(listaColisao);
            for (var i = 0; i < ((listaColisao.length) - 1); i++) {
                //alert(listaColisao[i]);

                $("#" + listaColisao[i]).addClass("alert-danger");
                $("#" + listaColisao[i] + "nome").addClass("alert-danger");
            }



        }

        function desiluminaColisao(div) {
            var idDiv = "#divColisao" + div;
            var html = $(idDiv).html() + "";
            var colisaoStr = html.replace(/^\s+|\s+$/g, "");
            //alert(html);


            var listaColisao = new Array();
            listaColisao = colisaoStr.split("<br>");
            console.log(listaColisao);
            for (var i = 0; i < ((listaColisao.length) - 1); i++) {
                //alert(listaColisao[i]);

                $("#" + listaColisao[i]).removeClass("alert-danger");
                $("#" + listaColisao[i] + "nome").removeClass("alert-danger");
            }

        }

    </script>
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
            <table class="table bg-warning">
                <thead>
                    <tr class="text-center">
                        <td class="text-uppercase text-info"> Código </td>
                        <td class="text-uppercase text-info"> Disciplina </td>
                        <td class="text-uppercase text-info"> Recomendação</td>
                        <td class="text-uppercase text-info"> Horas de Dedicação Semanal </td>
                        <td class="text-uppercase text-info"> Horários </td>
                        <td class="text-uppercase text-info"> Colisão de Horários </td>
                    </tr>
                </thead>
                <tbody id="lista">

                    <?php
                    $count = 0;
                    foreach ($recomendacao->getRecomendacaoFinal() as $rec) {
                        $c = $rec->getCodigo();
                        $count = $count + 1;
                        ?>

                        <tr class="text-center" id="elementos"> 

                            <td id="<?php echo $c; ?>"  ><?php echo $rec->getCodigo(); ?></td>
                            <td id="<?php echo $c . "nome"; ?>" class="text-success" ><?php echo $rec->getNome(); ?></td>
                            <td  class="text-success" ><?php echo (Integer) $rec->getImportancia() . "%"; ?></td>
                            <td class="text-success"><?php echo (Integer) $rec->getHorasDedicacao(); ?></td>

                            <td >
                                <?php
                                $countS = (string) ($count);
                                $idButton = "btnHorarios" . $countS;
                                $idDiv = "divHorarios" . $countS;
                                ?>
                                <button id="<?php echo $idButton; ?>" class="btn btn-default" onclick="mostrar(<?php echo $countS ?>)" value="MOSTRAR">MOSTRAR</button>

                                <div id="<?php echo $idDiv; ?>" hidden="true">
                                    <?php
                                    foreach ($rec->getHorarios() as $h) {
                                        echo $h . "<br>";
                                    }
                                    ?>
                                </div>
                            </td> 
                            <td class="text-danger">
                                <?php
                                $idButtonColisao = "btnColisao" . $countS;
                                $idDivColisao = "divColisao" . $countS;
                                ?>

                                <?php
                                if (count($rec->getColisoes()) == 0) {
                                    ?>
                                    <div >
                                    </div>
                                    <?php
                                } else {
                                    ?>

                                    <button id="<?php echo $idButtonColisao; ?>" class="btn btn-default" onclick="mostrarColisao(<?php echo $countS ?>)" value="MOSTRAR" >MOSTRAR</button>
                                    <?php
                                    $colisaoStr = "";
                                    foreach ($rec->getColisoes() as $col) {
                                        $colisaoStr = $colisaoStr . $col . ",";
                                    }
                                    ?>
                                    <div onmouseout="desiluminaColisao(<?php echo $countS; ?>)" onmouseover="iluminarColisao(<?php echo $countS; ?>)" id="<?php echo $idDivColisao; ?>" hidden="true" >
                                        <?php
                                        foreach ($rec->getColisoes() as $col) {
//                                            $fetch = selecionarWHERE("disciplina", array("NOME"), "CODIGO = '$col' LIMIT 1");
//                                            foreach ($fetch as $f) {
//                                                echo $f["NOME"] . ",<br> ";
//                                            }
                                            echo $col . "<br>";
                                        }
                                        ?>
                                    </div>
                                    <?php
                                }
                                ?>
                            </td>
                        </tr>
                        <?php
                    }
                    ?>

                </tbody>

            </table>
        </div>

    </div>
    <br>
    <br>
<center>
    <div class = "modal fade" id = "modalDifs">
        <div class = "modal-lg bg-warning">
            <div class = "modal-content">
                <div class = "modal-header bg-warning">
                    <button type = "button" class = "close" data-dismiss = "modal"><span>×</span></button>
                    <h4 class = "modal-title text-info bg-warning">Dificuldade por Categoria</h4>
                </div>
                <div class = "modal-body bg-warning">
                    <center>

                        <?php
                        $recomendacao->getListaDificuldade()->imprimeDificuldades();
//$recomendacao->getListaDificuldade()->desenhaGraficos();
                        ?>

                    </center>
                </div>
                <div class="modal-footer bg-warning">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
</center>





<center>
    <div class="modal fade" id="modalMedias">
        <div class="modal-lg bg-warning">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                    <h4 class="modal-title text-info bg-warning">Percentuais de Aprovação e Médias</h4>
                </div>
                <div class="modal-body bg-warning">
                    <center>

                        <?php
//$recomendacao->getListaDificuldade()->imprimeDificuldades();
                        $recomendacao->getListaDificuldade()->imprimeMediaAprovacao();
                        ?>



                    </center>
                </div>
                <div class="modal-footer bg-warning">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
</center>


</body>

