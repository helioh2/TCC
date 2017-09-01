<?php
$idCurso = $_GET["idCurso"];
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

    <center>
        <form action="upload.php" enctype="multipart/form-data" method="POST">
            Enviar o arquivo: 
            <br>
            <input name="arquivo" id="arquivo" class="alert-info" type="file" />

            <input type="hidden" name="idCurso" id="idCurso" value="<?php echo $idCurso; ?>"/>
            <br>
            <input type="submit" value="Enviar" /> 
        </form>
    </center>
</body>
</html>