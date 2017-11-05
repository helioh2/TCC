
<table>
    <tr>
        <th>Aprovação</th>
        <th>Média</th>
        <th>Disciplinas</th>
        <th>Dificuldade</th>
    </tr>
    <?php
    for ($percApr = 30; $percApr <= 100; $percApr = $percApr + 15) {

        for ($media = $percApr - 20; $media <= $percApr + 20; $media = $media + 5) {


            for ($qtdDiscCursadas = 0; $qtdDiscCursadas <= 10; $qtdDiscCursadas++) {
                if ($media <= 100) {
                    $comando = "java -jar ../jar/Dificuldade.jar ../jar/Dificuldade.fcl $media $percApr $qtdDiscCursadas";
                    $saida = exec($comando, $saida);
                    ?>
                    <tr>
                        <td><?php echo $percApr ?></td>
                        <td><?php echo $media ?></td>
                        <td><?php echo $qtdDiscCursadas ?></td>
                        <td><?php echo $saida ?></td>
                    </tr>
                    <?php
                }
            }
        }
    }
    ?>

</table>

