<?php

require_once '../classes/BD/crudPDO.php';

$idCurso = $_POST['idCurso'];
$idUsuario = $_POST['idUsuario'];
$fetch = selecionarWHERE("usuario", array('nome', 'id', 'email'), "id <> $idUsuario");
echo "<table class='table table-striped'>";
echo "<thead>";
echo "<th class='text-center'>NOME</th>"
 . "<th class='text-center' >E-MAIL</th>"
 . "<th class='text-center'>ENVIAR</th>";
echo "</thead>";
echo "<tbody>";
foreach ($fetch as $f) {
    echo "<tr class='text-center'>"
    . "<td>" . $f['nome'] . "</td>"
    . "<td>" . $f['email'] . "</td>"
    . "<td><button onclick='finalizarCompartilhamento(" . $idCurso . "," . $f['id'] . ")'>ENVIAR</button></td>"
    . "</tr>";
}
echo "</tbody>";
echo "</table>";
