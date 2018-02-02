<html>
    <head>
        <meta charset="UTF-8">
        <title id="titulo">Cadastrar Requisitos</title>
        <?php
        $idCurso = $_GET["idCurso"];
        $nomeCurso = $_GET["nomeCurso"];
        $codCurso = $_GET["codigo"];
        ?>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <script src="../js/jquery-3.2.0.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {

                $.ajax({
                    url: "../admin/verificarLogin.php"
                }).done(function (data) {
                    if (data === 'erro') {
                        alert('Você não está logado');
                        location.href = './login.php';
                    } else {
                        atualizar();
                    }
                });
            });



            function atualizar() {
                $.ajax({
                    type: "post",
                    url: "../ajax/cadastrarRequisitoListaDisciplinaAjax.php",
                    data: {idCurso: "<?php echo $idCurso; ?>"}
                }).done(function (data) {
                    
                    $(".active").html(data);

                });
                $.ajax({
                    type: "post",
                    url: "../ajax/cadastrarRequisitoListaRequisitoAjax.php",
                    data: {idCurso: "<?php echo $idCurso; ?>"}
                }).done(function (data) {

                    $(".alert-info").html(data);

                });
            }




            function cadastrar() {
                //var select = document.getElementById("selectRequisitos");
                var codRequisitos = document.getElementById("selectRequisitos");
                var codCurso = document.getElementById("codCurso").value;
                var codDisciplina = $("#selectDisciplina").find(":selected").val();

                var codRequisitosSelecionados = Array();
                for (var i = 0; i < (codRequisitos.length); i = i + 1) {

                    if (codRequisitos.options[i].selected == true) {
                        codRequisitosSelecionados.push((codRequisitos[i].value));

                    }
                }

                $.ajax({
                    type: 'POST',
                    url: "reqProlog.php",
                    data: {codRequisito: codRequisitosSelecionados, codCurso: codCurso, codDisciplina: codDisciplina},
                }).done(function (data) {

                    atualizar();

                });

            }

        </script>

    </head>
    <body class="bg-info">

        <div class="title">
            <h1></h1>

        </div>

        <br><br>

    <center>
        <form id="lista" class="container-fluid center-block" name="prolog" method="post" action="reqProlog.php">
            <label>Cadastre os requisitos de todas as disciplinas</label><br>
            <label>Caso a disciplina não tenha nenhum, insira sem selecionar nenhum requisito</label>
            <h4>Disciplina</h4>
            <select  id="selectDisciplina" class="active" name="codDisciplina">

                <!--                ajax-->

            </select>
            <br><br>
            <h4>Requsitos</h4>
            <select   class="alert-info" name="codRequisito[]" id="selectRequisitos" size="15" multiple >

                <!--                ajax-->

            </select>
            <input class="text-success" name="codCurso" type="hidden" id="codCurso" value = "<?php echo $codCurso; ?>">
            <input class="text-success" name="nomeCurso" type="hidden" id="nomeCurso" value = "<?php echo $nomeCurso; ?>">
            <input class="text-success" name="idCurso" type="hidden" id="idCurso" value = "<?php echo $idCurso; ?>">
<!--            <br> <input type="submit" name="submit" class="alert-success" value="Inserir">-->
            <br> <input type="button" onclick="cadastrar()" name="submit" class="alert-success" value="Inserir">
        </form>
        <br>
        <button type="button" onclick="window.location.href = '../admin/listarDisciplinas.php?codigo=<?php echo $codCurso; ?>'"> Voltar</button>
        <br>
        <br>
        <button type="button" onclick="window.location.href = 'excluirReq.php?codigo=<?php echo $codCurso; ?>'"> Excluir Todos Requisitos</button>

    </center>
</body>



</html>
