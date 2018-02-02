
<?php
$idCurso = $_POST['idCurso'];
?>
<center>
    <form id="curso" class="container-fluid bg-info" name="curso" method="post" action="inserirDisciplina.php">
        Inserir Disciplina<br><br>
        Nome<br><input name="nome" class="text-success center-block " ng-model="nomeDisciplina" type="text" id="nomeD" value=""><br>
        Cógido<br><input class="text-success center-block" name="codigo" type="text" id="codigoD" value = ""><br>
        Categoria<br><input class="text-success center-block" name="categoria" type="text" id="categoriaD" value = ""><br>
        Carga Horaria<br><input class="text-success center-block" name="CH" type="number" id="chD" value = ""> 
<!--                                Ativa <br><input class="text-success  text-center" name="ativa" type="checkbox" id="ativaD" value = "1" ?> <br> -->
        <input name="codCurso" class="text-success center-block "  type="hidden" id="idCurso" value ="<?php echo $idCurso; ?>" >

        <br>
        
        <input type="button" onclick="inserirDisciplina()"  class="alert-success" value="inserir">
    </form>
</center>