<?php

require_once '../classes/BD/crudPDO.php';

$idCurso = $_POST['idCurso'];

$fetch = selecionar("usuario", array('nome', 'id', 'email'));
echo "<table class='table table-striped text-center bg-warning center-block'>";
echo "<thead>";
echo "<th class='text-center'>NOME</th>"
 . "<th class='text-center' >E-MAIL</th>"
 . "<th class='text-center'>ENVIAR</th>";
echo "</thead>";
echo "<tbody>";
foreach ($fetch as $f) {
    echo "<tr class='text-center bg-warning'>"
    . "<td>" . $f['nome'] . "</td>"
    . "<td>" . $f['email'] . "</td>"
    . "<td><button onclick='finalizarCompartilhamento(" . $idCurso . "," . $f['id'] . ")'>ENVIAR</button></td>"
    . "</tr>";
}
echo "</tbody>";
echo "</table>";
