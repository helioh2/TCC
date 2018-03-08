<center>
    <form id="curso" class="container-fluid "  name="curso" method="get" action="../admin/inserirCurso.php">
        <label>Nome</label><br><input ng-model="nomeCurso" name="nome" class="text-success center-block "  type="text" id="nome" value = ""><br>
        <label>Cógido</label><br><input class="text-success center-block" name="codigo" type="text" id="codigo" value = ""><br>
        <label>N° de Semanas por Semestre</label><br>
        <input class="text-success text-center" name="semanas" type="number" id="semanas" value = "0">
        <br><br>
        <input type="submit" name="submit" class="btn btn-success" value="inserir">
    </form>
</center>