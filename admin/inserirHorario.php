<?php
require_once '../classes/BD/crudPDO.php';
$hora = $_POST['hora'];
$dia = $_POST['dia'];
inserir("horario", array('hora_inicio' => $hora, 'dia' => $dia));


