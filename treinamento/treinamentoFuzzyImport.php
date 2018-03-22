
<table>
    <tr>
        <th>Dificuldade</th>
        <th>Requisitada</th>
        <th>Recomendação</th>

    </tr>
    <?php
    $vetorDif = [10, 20, 30, 40, 50, 60, 70, 80, 90];
    $vetorRec = [1, 2, 3, 4, 5, 6];
    foreach ($vetorDif as $dif) {
        foreach ($vetorRec as $rec) {
            $comando = "java -jar ImportanciaDiscTeste.jar $dif $rec ImportanciaDiscTreino.fcl ";
            $saida = exec($comando, $saida);
            ?>
            <tr>
                <td><?php echo $dif ?></td>
                <td><?php echo $rec ?></td>                       
                <td><?php echo $saida ?></td>
            </tr>
            
            <?php
        }
        echo "<line></line>";
    }
    ?>
</table>
<table>
    <tr>
        <th>Requisitada</th>
        <th>Dificuldade</th>
        <th>Recomendação</th>

    </tr>
    <?php
    foreach ($vetorRec as $rec) {
        foreach ($vetorDif as $dif) {
            $comando = "java -jar ImportanciaDiscTeste.jar $dif $rec ImportanciaDiscTreino.fcl ";
            $saida = exec($comando, $saida);
            ?>
            <tr>
                <td><?php echo $rec ?></td>                       
                <td><?php echo $dif ?></td>
                <td><?php echo $saida ?></td>
            </tr>
            <?php
        }
    }
    ?>

</table>

