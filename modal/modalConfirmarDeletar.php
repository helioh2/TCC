<?php
$idDisciplina = $_POST['idDisciplina'];


?>


<center>
    <label>Deseja realmente excluir esta disciplina? </label>
        <br>
        <input type="button" name="deletar" onclick="deletarDisciplina(<?php echo $idDisciplina;?>)" class="btn text-danger" value="SIM">
    
</center>



