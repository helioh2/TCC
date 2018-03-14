<?php
$order = $_POST['order'];

if ($order == 'rec') {
    //usort($recomendacao, "Disciplina::ordenaDisciplinas");
} else {
   // usort($recomendacao, "Disciplina::ordenaDisciplinasPorColisao");
}

foreach ($recomendacao->getRecomendacaoFinal() as $rec) {
    ?>

    <tr class="text-center"> 
        <td  class="text-success" ><?php echo $rec->getCodigo(); ?></td>
        <td  class="text-success" ><?php echo $rec->getNome(); ?></td>
        <td  class="text-success" ><?php echo (Integer) $rec->getImportancia() . "%"; ?></td>
        <td class="text-success"><?php echo (Integer) $rec->getHorasDedicacao(); ?></td>
        <td class="text-danger">
            <?php
            foreach ($rec->getHorarios() as $h) {
                echo $h . " ";
            }
            ?>
        </td> <td class="text-danger">
            <?php
            foreach ($rec->getColisoes() as $col) {
                $fetch = selecionarWHERE("disciplina", array("NOME"), "CODIGO = '$col' LIMIT 1");
                foreach ($fetch as $f) {
                    echo $f["NOME"] . ",<br> ";
                }
            }
            ?>
        </td>
    </tr>
    <?php
}
?>