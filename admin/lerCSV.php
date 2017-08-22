<?php
$idCurso = $_GET["idCurso"];
?>

<form action="upload.php" enctype="multipart/form-data" method="POST">
    Enviar o arquivo: <input name="arquivo" id="arquivo" type="file" />

    <input type="hidden" name="idCurso" id="idCurso" value="<?php echo $idCurso; ?>"/>
    <input type="submit" value="Enviar" /> 
</form>

