<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ListarCursos
 *
 * @author danielkarling
 */
?>


<?php
include_once '../classes/Disciplina.php';
include_once '../classes/BD/crudPDO.php';
include_once '../classes/Curso.php';

class ListarCursos {

    private $cursos = array();

    public function __construct() {
        $fetch = selecionar("curso", array("id", "codigo", "nome", "semanas"));
        foreach ($fetch as $linha) {
            $disc = new Curso();
            $disc->curso($linha["nome"], $linha["codigo"], $linha["id"], $linha["semanas"]);
            $this->cursos[] = $disc;
        }
    }

    public function listar() {
        ?>
        <center>            
                <table class="table table-hover">
                    <tr class = "text-center bg-info2">
                        <th class="text-center ">Código</th><th class="text-center">Alterar</th><th class="text-center">Nome</th>
                    </tr>
                    <?php
                    foreach ($this->getCursos() as $curso) {

                        echo "<tr class='text-center bg-info2'>"
                        . "<td>" . $curso->getCodigo() . "</td>"
                        . "<td class='text-warning'><a href='formCurso.php?idCurso=" . $curso->getId() . "'> Alterar</a></td>"
                        . "<td class='text-warning'><a href='listarDisciplinas.php?codigo=" . $curso->getCodigo() . "'>" . $curso->getNome() . "</td>"
                        . "</tr>";
                    }
                    ?>
                </table>           
        </center>
        <?php
    }

    function getCursos() {
        return $this->cursos;
    }

}
