<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


require '../classes/BD/crudPDO.php';
$nome = "";
if (!empty($_POST['nome'])) {
    $nome = $_POST['nome'];
}

$id_curso = $_POST["idCurso"];

session_start();
$id_usuario = $_SESSION["usuario"]['id'];


//$num = numLinhasSelecionarWHERE("curso", array('id'), "id_usuario = $id_usuario AND id = $id_curso");
$num = numLinhasSelecionarWHERE("curso left join compartilhado on curso.id = compartilhado.id_curso",
        array('curso.id'),
        " curso.id = $id_curso AND (curso.id_usuario = $id_usuario OR compartilhado.id_compartilhado = $id_usuario)");
if($num == 0){
    
    print "<script>  location.href = './login.php';</script>";
    
}


$qtdDisciplinas = 0;

$fetch = selecionarWHERE("disciplina", array("ID", "CODIGO", "NOME", "categoria", "TOTAL_CARGA_HORARIA", "requisitoCadastrado", "ativa"), "id_curso = '$id_curso' AND NOME LIKE '%$nome%' ORDER BY NOME");
foreach ($fetch as $linha) {
    $qtdDisciplinas = $qtdDisciplinas + 1;
    $ativa = $linha["ativa"];
    if ($ativa) {
        $stringAtivado = "Ativada";
        $classButtonAtivar = "text-success";
    } else {
        $stringAtivado = "Desativada";
        $classButtonAtivar = "text-danger";
    }

    $hora = "";
    $horarios = selecionarWHERE("disciplina, horario, disc_horario", array("horario.hora_inicio", "horario.dia"), "disciplina.ID = '" . $linha["ID"] . "' AND disc_horario.id_disciplina = disciplina.ID AND horario.id_horario = disc_horario.id_horario");

    foreach ($horarios as $h) {
        $hora = $hora . $h["dia"] . " " . $h["hora_inicio"] . " - ";
    }
    $codigoCurso = selecionarWHERE("curso", array("codigo", "nome"), "curso.id = '" . $id_curso . "' LIMIT 1");
    foreach ($codigoCurso as $cod) {
        $codCurso = $cod["codigo"];
        $nomeCurso = $cod["nome"];
    }

    echo "<tr>"
    . "<td ";
    if ($linha["requisitoCadastrado"] == 0) {
        echo " class='text-danger'";
    }
    echo " id='codigo" . $linha["CODIGO"] . "'>" . $linha["CODIGO"] . "</td>"
//    . "<td><a href='formDisciplina.php?codigo=" . $linha["CODIGO"] . "&idCurso=" . $id_curso . "'";
    . "<td><a onclick='alterarDisciplina(" . $linha['ID'] . ")'";
    if ($linha["requisitoCadastrado"] == 0) {
        echo " class='text-danger dcontexto button'><span>Requisitos não cadastrados!!!!</span>";
//        echo " class='text-danger' onmouseover='requisitoNãoCadastrado()' onmouseout='UnTip()'>";
    } else {
        echo ">";
    }
    echo $linha["NOME"] . "</a></td>"
    . "<td>" . $linha["categoria"] . "</td>"
    . "<td>" . $linha["TOTAL_CARGA_HORARIA"] . "</td>"
    . "<td><a href='horarios.php?idDisciplina=" . $linha["ID"] . "&codigo=" . $codCurso . "'>Horário<br>" . $hora . "</a></td>"
    . "<td><button class='$classButtonAtivar' onclick='ativar(" . $linha["ID"] . ", " . $ativa . ")'>$stringAtivado</a></td>"
    . "<td><button onclick='confirmarDeletar(" . $linha["ID"] . ")'>Deletar</a></td>"
    //. "<td><a href='excluirDisciplina.php?idDisciplina=" . $linha["ID"] . "&codigo=" . $codCurso . "&nomeCurso='" . $nomeCurso . "'>Deletar</a></td>"
    . "</tr>";
}

echo "<tr class='text-success'><td></td><td>" . $qtdDisciplinas . " DISCIPLINAS ENCONTRADAS</td></tr>";

//$listDisciplinas->listarPorNome($id_curso, $nome);
//$listDisciplinas->listar($id_curso);
?>