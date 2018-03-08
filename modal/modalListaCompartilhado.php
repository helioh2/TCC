<?php

require_once '../classes/BD/crudPDO.php';

$id_curso = $_POST['idCurso'];
session_start();
$id_usuario = $_SESSION["usuario"]['id'];

$num = numLinhasSelecionarWHERE("compartilhado", array('id_curso', 'id_compartilhado'), "id_curso = $id_curso AND id_compartilhado = $id_usuario");
if ($num > 0) {
    echo "<center>Você não tem permissão</center>";
} else {


    $fetch = selecionarWHERE("compartilhado JOIN usuario ON compartilhado.id_compartilhado = usuario.id", array("usuario.id, usuario.nome, usuario.email"), "compartilhado.id_curso = $id_curso ");
    echo "<center>";

    echo "<table class='table table-hover text-center bg-warning'>";
    echo "<thead>";

    echo "<tr>"
    . "<th class='text-center'>NOME</th>"
    . "<th class='text-center' >E-MAIL</th>"
    . "<th class='text-center' >DESFAZER</th>"
    . "</tr>";

    echo "</thead>";
    echo "<tbody>";
    foreach ($fetch as $f) {
        echo "<tr class='text-center bg-warning'>"
        . "<td>" . $f['nome'] . "</td>"
        . "<td>" . $f['email'] . "</td>"
        . "<td><button class='btn btn-default' onclick='descompartilhar(" . $f['id'] . ")'>DESFAZER</button></td>"
        . "</tr>";
    }
    echo "</tbody>";
    echo "</table>";

    echo "</center>";
}
?>