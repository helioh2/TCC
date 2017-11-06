<html>
    <head>
        <meta charset="UTF-8">
        <title id="titulo">PROLOG</title>
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
                    type: "post",
                    url: "listaDisciplinaAjax.php",
                    data: {idCurso: "<?php echo $idCurso; ?>"},
                }).done(function (data) {
                    $(".active").html(data);

                });
                $.ajax({
                    type: "post",
                    url: "listaRequisitoAjax.php",
                    data: {idCurso: "<?php echo $idCurso; ?>"},
                }).done(function (data) {

                    $(".alert-info").html(data);

                });
            });
           
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
            <select   class="active" name="codDisciplina">

            </select>
            <br><br>
            <h4>Requsitos</h4>
            <select   class="alert-info" name="codRequisito[]" size="15" multiple >

            </select>
            <input class="text-success" name="codCurso" type="hidden" id="codCurso" value = "<?php echo $codCurso; ?>">
            <input class="text-success" name="nomeCurso" type="hidden" id="nomeCurso" value = "<?php echo $nomeCurso; ?>">
            <input class="text-success" name="idCurso" type="hidden" id="idCurso" value = "<?php echo $idCurso; ?>">
            <br> <input type="submit" name="submit" class="alert-success" value="inserir Prolog">
        </form>
<br>
 <button type="button" onclick="window.location.href='listarDisciplinas.php?codigo=<?php echo $codCurso;?>'"> Voltar</button>
 <br>
  <br>
 <button type="button" onclick="window.location.href='excluirReq.php?codigo=<?php echo $codCurso;?>'"> Excluir Todos Requisitos</button>

    </center>
</body>



</html>
