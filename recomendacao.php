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
            $(idButton).hide();
            $(idDiv).show();


        }
        function esconder(cod) {

            var idButton = "#btnHorarios" + cod;
            var idDiv = "#divHorarios" + cod;

            $(idButton).show();
            $(idDiv).hide();


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
        function mostrarInfo() {
            if ($("#btnInfo").val() === "mostrar") {
                $("#btnInfo").val(0);
                $("#btnInfo").val("ocultar");
                $("#info").show();

            } else {
                $("#btnInfo").val("ocultar");
                $("#btnInfo").val("mostrar");
                $("#info").hide();
            }

        }

        var sumHorasTotais = 0;

        function selecionar(index, horas) {

            var idLinha = "#linha" + index;
            var idName = index;
            var codCodigo = $(document.getElementsByName(idName)).attr("id");
            //alert(codCodigo);

            var intHoras = parseInt(horas);
            var id = "#" + index + "btn";
            if ($(id).val() === "somar") {

                sumHorasTotais = sumHorasTotais + intHoras;
                $(id).html("-");
                $(id).removeClass();
                $(id).addClass("btn btn-sm btn-danger");
                $(id).val("retirar");
                $("#" + codCodigo).addClass("alert-info");
                $("#" + codCodigo + "nome").addClass("alert-info");
                // $(idLinha).addClass("alert-info");

                //verifica choques automaticamente
                var divColisao = "#divColisao" + index;
                var codColisoes = $(divColisao).html() + "";
                codColisoes = codColisoes.replace(/^\s+|\s+$/g, "");
                //alert(codColisoes);
                //lista das colisoes de cod
                var listaColisao = new Array();
                listaColisao = codColisoes.split("<br>");
                //deseleciona as disciplias com choque
                for (var i = 0; i < ((listaColisao.length) - 1); i++) {
                    //alert(listaColisao[i]);
                    var buttonName = listaColisao[i] + "btn";
                    var btnSelecionarId = $(document.getElementsByName(buttonName)).attr("id");
                    var btnSelecionarVal = $("#" + btnSelecionarId).val();

                    var horasName = listaColisao[i] + "horas";
                    var idHoras = $(document.getElementsByName(horasName)).attr("id");


                    //var btnSelecionarVal = $(idBtnSelecionar).val();
                    // alert("id horas: "+idHoras);
                    //alert(btnSelecionarVal);
                    if (btnSelecionarVal === "retirar") {
                        alert("Colisão de Horário com: "+listaColisao[i]);
                        // alert(listaColisao[i]+"retirar");
                        $("#" + btnSelecionarId).html("+");
                        $("#" + btnSelecionarId).removeClass();
                        $("#" + btnSelecionarId).addClass("btn btn-sm btn-success");
                        $("#" + btnSelecionarId).val("somar");

                        $("#" + listaColisao[i]).removeClass("alert-info");
                        $("#" + listaColisao[i] + "nome").removeClass("alert-info");
                        //alert(idHoras);
                        var horas2 = parseInt($("#" + idHoras).html());
                        //alert(horas2);
                        sumHorasTotais = sumHorasTotais - horas2;
                    }
                }

            } else {
               
                sumHorasTotais = sumHorasTotais - intHoras;
                $(id).html("+");
                $(id).removeClass();
                $(id).addClass("btn btn-sm btn-success");
                $(id).val("somar");

                $("#" + codCodigo).removeClass("alert-info");
                $("#" + codCodigo + "nome").removeClass("alert-info");
                //$(idLinha).removeClass("alert-info");

            }
            console.log(sumHorasTotais);
            var str = "<label style='width: 180px; 'class='panel panel-primary bg-info'> ESTIMATIVA DE<br>" +
                    sumHorasTotais +
                    " HORAS SEMANAIS <br> EXTRACLASSE</label>";
            $("#horasTotais").html(str);

        }

        function selecionar2(index, horas) {

            var idLinha = "#linha" + index;
            var intHoras = parseInt(horas);
            var id = "#" + index + "btn";
            if ($(id).val() === "somar") {


                sumHorasTotais = sumHorasTotais + intHoras;
                $(id).html("-");
                $(id).removeClass();
                $(id).addClass("btn btn-sm btn-danger");
                $(id).val("retirar");

                $(idLinha).addClass("alert-info");

            } else {

                sumHorasTotais = sumHorasTotais - intHoras;
                $(id).html("+");
                $(id).removeClass();
                $(id).addClass("btn btn-sm btn-success");
                $(id).val("somar");

                $(idLinha).removeClass("alert-info");

            }
            console.log(sumHorasTotais);
            var str = "<label style='width: 180px; 'class='panel panel-primary bg-info'> ESTIMATIVA DE<br>" +
                    sumHorasTotais +
                    " HORAS SEMANAIS <br> EXTRACLASSE</label>";
            $("#horasTotais").html(str);

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
                                <li style="margin-top: 10px;"><button class="btn-primary btn-lg" style="width: 180px;" data-toggle="modal" data-target="#modalDifs">DIFICULDADE</button></li>
                                <li style="margin-top: 10px;"><button class="btn-primary btn-lg" style="width: 180px;" data-toggle="modal" data-target="#modalMedias">MÉDIAS</button></li>
                                <li style="margin-top: 10px;"> <div id='horasTotais'>
                                        <label style='width: 180px; 'class='panel panel-primary bg-info'> ESTIMATIVA DE<br>
                                            HORAS SEMANAIS <br> EXTRACLASSE</label>
                                    </div></li>
                                <br>
                                <br>
                                <li style="margin-top: 10px;  padding-top: 80%;"><button class="btn-info btn-lg" style="width: 180px;" onclick="window.location.href = 'index.php'">VOLTAR</button></li>


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
                        <td style="vertical-align:middle"  class="text-uppercase text-primary"> Código </td>
                        <td style="vertical-align:middle" class="text-uppercase text-primary"> Disciplina </td>
                        <td style="vertical-align:middle"  class="text-uppercase text-primary"> Escolher </td>
                        <td style="vertical-align:middle"  class="text-uppercase text-primary"> Recomendação</td>
                        <td class="text-uppercase text-primary"> Horas de Dedicação Semanal </td>
                        <td style="vertical-align:middle"   class="text-uppercase text-primary"> Horários </td>
                        <td class="text-uppercase text-primary"> Colisão de Horários </td>
                    </tr>
                </thead>
                <tbody id="lista">

                    <?php
                    $count = 0;
                    foreach ($recomendacao->getRecomendacaoFinal() as $rec) {
                        $c = $rec->getCodigo();
                        $h = $rec->getHorasDedicacao();
                        $count = $count + 1;
                        $countS = (string) ($count);
                        ?>

                        <tr class="text-center" id="<?php echo "linha" . $count; ?>"> 

                            <td name="<?php echo $count; ?>" id="<?php echo $c; ?>"  ><?php echo $rec->getCodigo(); ?></td>
                            <td   id="<?php echo $c . "nome"; ?>" class="text-success" ><?php echo $rec->getNome(); ?></td>

                            <td><button name="<?php echo $c . "btn" ?>" id="<?php echo $countS . "btn" ?>" class="btn btn-sm btn-success" onclick="selecionar(<?php echo $count; ?>, <?php echo round($h, 0); ?>)" value="somar">+</button></td>

                            <td class="text-success" ><?php echo round($rec->getImportancia(), 0) . "%"; ?></td>
                            <td id="<?php echo $count . "horas"; ?>" name="<?php echo $c . "horas"; ?>"  class="text-success"><?php echo round($rec->getHorasDedicacao(), 0); ?></td>

                            <td >
                                <?php
                                $idButton = "btnHorarios" . $countS;
                                $idDiv = "divHorarios" . $countS;
                                ?>
                                <button id="<?php echo $idButton; ?>" onmouseover="mostrar(<?php echo $countS; ?>)" value="MOSTRAR">
                                    <img src="img/horario.png" height="35px" width="35px"/> 
                                </button>

                                <div onmouseout="esconder(<?php echo $countS; ?>)" id="<?php echo $idDiv; ?>"  hidden="true">
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
    <button id="btnInfo" class="btn btn-lg btn-primary text-uppercase" onclick="mostrarInfo()" style="margin-left: 18%;" value="mostrar">Informações</button>

    <br>
    <div id="info"  class="panel panel-primary" style="margin-left: 18%; margin-right: 3%; margin-bottom: 3%;"  hidden="true">
        <?php
        $strMsg = $recomendacao->getListaDificuldade()->listarStringCategorias(30);

        if (strlen($strMsg) == 0) {
            $recomendacao->setMensagem("Você está indo bem!");
        } else {
            $recomendacao->setMensagem("Atenção: se esforce mais em " . substr($strMsg, 0, -2));
        }
        $totalHorasCursado = $recomendacao->getCargaCursada();
        $totalHorasCurso = $recomendacao->getCargaTotalCurso();
        $totalAnosCursados = $recomendacao->getAnosCursados();
        $mediaPorAno = $totalHorasCursado / $totalAnosCursados;

        $previsaoConclusao = ($totalHorasCurso - $totalHorasCursado) / $mediaPorAno;
        $previsaoConclusaoAnos = (int) ($previsaoConclusao);
        $previsaoConclusaoMeses = "";
        if (($previsaoConclusao - $previsaoConclusaoAnos ) > 0.5) {
            $previsaoConclusaoMeses = " e meio";
        }

        $ano = "";
        if ($previsaoConclusaoAnos > 1) {
            $ano = " anos";
        } else {
            $ano = " ano";
        }

        echo "<h3 class='text-uppercase' >" . $recomendacao->getMensagem() . "</h3><br><br>";
        echo "<h4 class='text-uppercase'> Você já cursou $totalHorasCursado horas<br>";
        echo "continuando assim, a previsão de conclusão é de " . $previsaoConclusaoAnos . $ano .
        $previsaoConclusaoMeses . " </h4>";
        ?>
    </div>
</center>

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

