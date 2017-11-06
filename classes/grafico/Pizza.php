<?php

//GERA GRAFICO EM PIZZA - INICIO - AUTOR: VINICIUS S. PAES (paes.vinicius@gmail.com)

$legenda = $_POST['legenda'];
$valores = $_POST['valores'];
$titulo = $_POST['titulo'];

$img = imagecreatetruecolor(250, 250);
imagefilledrectangle($img, 0, 0, 250, 250, imagecolorallocate($img, 255, 255, 255));

$img2 = imagecreatetruecolor(150, 250);
imagefilledrectangle($img2, 0, 0, 150, 250, imagecolorallocate($img, 255, 255, 255));

imageellipse($img, 125, 125, 200, 200, imagecolorallocate($img, 0, 0, 0));

$border = imagecolorallocate($img, 0, 0, 0);
$colors = array(imagecolorallocate($img, 255, 150, 0), imagecolorallocate($img, 70, 200, 70), imagecolorallocate($img, 120, 0, 200), imagecolorallocate($img, 200, 20, 0), imagecolorallocate($img, 0, 50, 180), imagecolorallocate($img, 220, 220, 220));

$angulo = array();

$soma = array_sum($valores);

$porcen360 = 0;
if (count($valores) > 5) {
    die("Forneça no máximo 5 valores.");
}

while (current($valores)) {
    $porcen = current($valores) * 100 / $soma; //verifica a porcentagem correspondente aos valores
    if ($porcen <= 1) {
        $porcen = 1;
    }
    $porcen360 += $porcen * 360 / 100; //verifica o angulo calculando a porcentagem em 360 
    array_push($angulo, $porcen360);
    next($valores);
}

if (count($angulo) == 1) {
    imagefilltoborder($img, 125, 125, $border, $fill);
} else {
    $RY1 = 55;
    $RY2 = 70; //coordenadas de Y para desenhar os retangulos para as legendas
    while (current($angulo)) {
        $ang2 = current($angulo);
        if ($ang2 > 360) {
            $ang2 = 0;
        }

        $ValX = 100 * cos(deg2rad($ang2)); //formula: raio * coseno do angulo em radianos
        $ValXFill = 97 * cos(deg2rad($ang2 - 1)); //calculo para estabelecer um ponto de preenchimento, foi escolhido um numero menor que 100 para diminuir o raio, no caso 97, e  angulo diminuido em 1 para a coordenada nao ficar em cima da linha
        $ValY = 100 * sin(deg2rad($ang2));
        $ValYFill = 97 * sin(deg2rad($ang2 - 1));
        imageline($img, 125, 125, $ValX + 125, $ValY + 125, imagecolorallocate($img, 0, 0, 0));
        imagefilltoborder($img, $ValXFill + 125, $ValYFill + 125, $border, current($colors));
        //LEGENDA - INICIO
        imagerectangle($img2, 15, $RY1, 30, $RY2, imagecolorallocate($img, 0, 0, 0));
        imagefilltoborder($img2, 25, $RY1 + 5, $border, current($colors));
        imagestring($img2, 3, 40, $RY1 + 2, current($legenda), current($colors));
        //LEGENDA - FIM
        $RY1 += 30;
        $RY2 += 30;
        next($angulo);
        next($colors);
        next($legenda);
    }
}

imagepng($img2, 'legenda.png');
imagepng($img, 'valores.png');
echo "<center><b>$titulo</b><br>" .
 "<img src='valores.png'> <img src='legenda.png'></center>";

imagedestroy($img);

//GERA GRAFICO EM PIZZA  - FIM - AUTOR: VINICIUS S. PAES (paes.vinicius@gmail.com)
