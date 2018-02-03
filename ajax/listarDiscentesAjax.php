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


$num = numLinhasSelecionarWHERE("curso left join compartilhado on curso.id = compartilhado.id_curso", 
        array('curso.id'),
        "curso.id = $id_curso AND (curso.id_usuario = $id_usuario OR compartilhado.id_compartilhado = $id_usuario)");
if ($num == 0) {

    print "<script>  location.href = './login.php';</script>";
}


$qtdAlunos = 0;

$fetch = selecionarWHERE("aproveitamento", array("ID", "NOME_PESSOA", "MATR_ALUNO", "NOME_CURSO", "ANO", "NOME_ATIV_CURRIC", "MEDIA_FINAL", "DESCR_SITUACAO", "PERIODO", "TOTAL_CARGA_HORARIA", "ANO_INGRESSO", "FORMA_EVASAO", "ANO_EVASAO", "SEXO"), "id_curso = '$id_curso' AND (NOME_PESSOA LIKE '%$nome%' OR MATR_ALUNO LIKE '%$nome%') ORDER BY NOME_PESSOA " );
foreach ($fetch as $linha) {
    $qtdAlunos = $qtdAlunos + 1;
//
//    $codigoCurso = selecionarWHERE("curso", array("codigo", "nome"), "curso.id = '" . $id_curso . "' LIMIT 1");
//    foreach ($codigoCurso as $cod) {
//        $codCurso = $cod["codigo"];
//        $nomeCurso = $cod["nome"];
//    }

    echo "<tr>";

    echo "<td>" . $linha["ID"] . "</td>"
    . "<td>" . $linha["NOME_PESSOA"] . "</td>"
    . "<td>" . $linha["MATR_ALUNO"] . "</td>"
//    . "<td>" . $linha["NOME_CURSO"] . "</td>"
    . "<td>" . $linha["ANO"] . "</td>"
    . "<td>" . $linha["NOME_ATIV_CURRIC"] . "</td>"
    . "<td>" . $linha["MEDIA_FINAL"] . "</td>"
    . "<td>" . $linha["DESCR_SITUACAO"] . "</td>"
    . "<td>" . $linha["PERIODO"] . "</td>"
    . "<td>" . $linha["TOTAL_CARGA_HORARIA"] . "</td>"
    . "<td>" . $linha["ANO_INGRESSO"] . "</td>"
    . "<td>" . $linha["FORMA_EVASAO"] . "</td>"
    . "<td>" . $linha["ANO_EVASAO"] . "</td>"
    . "<td>" . $linha["SEXO"] . "</td>"
    . "</tr>";
}

echo "<tr class='text-success text-uppercase' ><td></td><td>$qtdAlunos Registros Encontrados</td></tr>";



//$listDisciplinas->listarPorNome($id_curso, $nome);
//$listDisciplinas->listar($id_curso);
?>