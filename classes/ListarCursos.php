<?php
include_once '../classes/Disciplina.php';
include_once '../classes/BD/crudPDO.php';
include_once '../classes/Curso.php';
?>
<script>
    function semPermissao() {
        alert('Você não tem permissão');
    }
</script>
<?php

class ListarCursos {

    private $cursos = array();

    public function __construct() {
//session_start();
        $id_usuario = $_SESSION["usuario"]['id'];

//        $fetch = selecionarWHERE("curso", array("id", "codigo", "nome", "semanas"), "id_usuario = $id_usuario");
//novo select, seleciona os cursos compartilhados contigo
        $fetch = selecionarWHERE("curso left join compartilhado on curso.id = compartilhado.id_curso ", array("curso.id", "curso.codigo", "curso.nome", "curso.semanas", "curso.id_usuario",
            "compartilhado.id_compartilhado"), "curso.id_usuario = $id_usuario OR compartilhado.id_compartilhado = $id_usuario GROUP BY curso.id");
//novo select, seleciona os cursos compartilhados contigo


        foreach ($fetch as $linha) {

            $curso = new Curso();

            $curso->curso($linha["nome"], $linha["codigo"], $linha["id"], $linha["semanas"]);

            if ($linha["id_usuario"] != $id_usuario) {
                $curso->setCompartilhado($linha["id_usuario"]);
            }
            $this->cursos[] = $curso;
        }
    }

    public function listar() {
        ?>
        <center>            
            <table class="table table-hover">
                <tr class = "text-center bg-info2">
                    <th class="text-center ">Código</th><th class="text-center">Compartilhar</th><th class="text-center">Alterar</th><th class="text-center">Nome</th>
                </tr>
                <?php
                foreach ($this->getCursos() as $curso) {
                    $nome = $curso->getNome();
                    $codigo = $curso->getCodigo();

                    $classCurso = "text-center bg-info2";


                    if ($curso->getCompartilhado() != 0) {
                        $classCurso = "text-center bg-info2 text-danger";
                        $selecionar = selecionarWHERE("usuario", array('nome'), "id = '".$curso->getCompartilhado()."' LIMIT 1");
                        foreach ($selecionar as $s) {
                            $nome = $nome . " (COMPART)";
                            $dono = $s["nome"];
                        }
                        
                    }

                    echo "<tr class='" . $classCurso . "'>"
                    . "<td>" . $codigo . "</td>";


                    if ($curso->getCompartilhado() != 0) {
                        echo "<td><button class='text-uppercase' onclick='semPermissao()'>$dono</button></td>";
                        echo "<td ><button class='text-warning text-uppercase' onclick='semPermissao()'></button></td>";
                    } else {
                        echo "<td><button class='text-uppercase' onclick='compartilhar(" . $curso->getId() . ")'>Compartilhar</button></td>";
                        echo "<td class='text-warning'><button onclick='alterarCurso(" . $curso->getId() . ")'> ALTERAR</button></td>";
                    }


                    //. "<td class='text-warning'><a href='formCurso.php?idCurso=" . $curso->getId() . "'> Alterar</a></td>"
                    echo "<td class='text-warning'><a href='listarDisciplinas.php?codigo=" . $codigo . "'>" . $nome . "</td>"
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
