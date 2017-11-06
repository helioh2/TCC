<?php
$nomeCurso = $_GET["nomeCurso"];
$codCurso = $_GET["codCurso"];







//obsoleto




?>




















<head>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery-3.2.0.min.js"></script>
</head>
<div>
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