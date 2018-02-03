<?php

require_once '../classes/BD/crudPDO.php';

$idCurso = $_POST['idCurso'];

$fetch = selecionar("usuario", array('nome', 'id', 'email'));

foreach ($fetch as $f) {
    echo "<tr class='text-center bg-info2'>"
    . "<td>" . $f['nome'] . "</td>"
    . "<td>" . $f['email'] . "</td>"
    . "<td><button onclick='finalizarCompartilhamento(" . $idCurso . "," . $f['id'] . ")'>Enviar<button></td>"
    . "</tr>";
}