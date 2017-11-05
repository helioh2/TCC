<?php
$idCurso = $_GET["idCurso"];
?>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Inserir Históricos</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">

        <script src="../js/jquery-3.2.0.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>

        <script>
            function setaDadosModal(valor) {
                document.getElementById('nome').value = valor;
            }
        </script>


    </head>

    <body class="bg-warning">

    <center>
        <form action="upload.php" enctype="multipart/form-data" method="POST">
            <br>
            <label>Enviar o arquivo: </label>
            <br>
            <input name="arquivo" id="arquivo" class="alert-warning" type="file" />

            <input type="hidden" name="idCurso" id="idCurso" value="<?php echo $idCurso; ?>"/>
            <br>
            <input type="submit" class="bg-success" value="Enviar" /> 
        </form>
        <br>
        <button type="button" class="bg-success  btn-lg" onclick="window.location.href = 'CSV/modelo/modelo.xlsx'"> Modelo da Planília</button>
    </center>
</body>
</html>