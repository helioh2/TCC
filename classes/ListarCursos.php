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
            <div class="container-fluid">
                <table class="table table-striped ">
                    <tr  class = "text-info text-center">
                        <th class="text-center">Código</th><th class="text-center">Alterar</th><th class="text-center">Nome</th>
                    </tr>
                    <?php
                    foreach ($this->getCursos() as $curso) {

                        echo "<tr class='text-center bg-warning'>"
                        . "<td class='text-success'" . $curso->getCodigo() . "'>" . $curso->getCodigo() . "</td>"
                        . "<td class='text-success'><a href='formCurso.php?idCurso=" . $curso->getId() . "'> Alterar</a></td>"
                        . "<td class='text-success'><a href='listarDisciplinas.php?codigo=" . $curso->getCodigo() . "'>" . $curso->getNome() . "</td>"
                        . "</tr>";
                    }
                    ?>
                </table>
            </div>
        </center>
        <?php
    }

    function getCursos() {
        return $this->cursos;
    }

}
