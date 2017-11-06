<?php

//GERA GRAFICO EM PIZZA - INICIO - AUTOR: VINICIUS S. PAES (paes.vinicius@gmail.com)

class graficoPizza {

    private $legenda;
    private $valor;
    private $titulo;

    function setLegenda($legenda) {
        $this->legenda = $legenda;
    }

    function setValor($valor) {
        $this->valor = $valor;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function desenhar() {



        $img = imagecreatetruecolor(250, 250);
        imagefilledrectangle($img, 0, 0, 250, 250, imagecolorallocate($img, 255, 255, 255));

        $img2 = imagecreatetruecolor(150, 250);
        imagefilledrectangle($img2, 0, 0, 150, 250, imagecolorallocate($img, 255, 255, 255));

        imageellipse($img, 125, 125, 200, 200, imagecolorallocate($img, 0, 0, 0));

        $border = imagecolorallocate($img, 0, 0, 0);
        $color = imagecolorallocate($img, 255, 150, 0);
        $color2 = imagecolorallocate($img, 255, 255, 255);

       

        $porcen360 = 0;
        



        $porcen = $this->valor ; //verifica a porcentagem correspondente aos valores
        if ($porcen <= 1) {
            $porcen = 1;
        }
        $porcen360 += $porcen * 360 / 100; //verifica o angulo calculando a porcentagem em 360 
     
        
        $porcenResto = (100 - $this->valor) ; //verifica a porcentagem correspondente aos valores
        if ($porcenResto <= 1) {
            $porcenResto = 1;
        }
        $porcen360Resto = $porcen360 + $porcenResto * 360 / 100; //verifica o angulo calculando a porcentagem em 360 
     



        if ($porcen360 == 1) {
            imagefilltoborder($img, 125, 125, $border, $fill);
        } else {
            $RY1 = 55;
            $RY2 = 70; //coordenadas de Y para desenhar os retangulos para as legendas

            $ang2 = $porcen360;
            if ($ang2 > 360) {
                $ang2 = 0;
            }

            $ValX = 100 * cos(deg2rad($ang2)); //formula: raio * coseno do angulo em radianos
            $ValXFill = 97 * cos(deg2rad($ang2 - 1)); //calculo para estabelecer um ponto de preenchimento, foi escolhido um numero menor que 100 para diminuir o raio, no caso 97, e  angulo diminuido em 1 para a coordenada nao ficar em cima da linha
            $ValY = 100 * sin(deg2rad($ang2));
            $ValYFill = 97 * sin(deg2rad($ang2 - 1));
            imageline($img, 125, 125, $ValX + 125, $ValY + 125, imagecolorallocate($img, 0, 0, 0));
            imagefilltoborder($img, $ValXFill + 125, $ValYFill + 125, $border, $color);
            //LEGENDA - INICIO
            imagerectangle($img2, 15, $RY1, 30, $RY2, imagecolorallocate($img, 0, 0, 0));
            imagefilltoborder($img2, 25, $RY1 + 5, $border, $color);
            imagestring($img2, 3, 40, ($RY1 + 2), $this->legenda . "", $color);
            //LEGENDA - FIM
            $RY1 += 30;
            $RY2 += 30;
        }
        
        
        
        
        if ($porcen360Resto == 1) {
            imagefilltoborder($img, 125, 125, $border, $fill);
        } else {
            $RY1 = 55;
            $RY2 = 70; //coordenadas de Y para desenhar os retangulos para as legendas

            $ang2 = $porcen360Resto;
            if ($ang2 > 360) {
                $ang2 = 0;
            }

            $ValX = 100 * cos(deg2rad($ang2)); //formula: raio * coseno do angulo em radianos
            $ValXFill = 97 * cos(deg2rad($ang2 - 1)); //calculo para estabelecer um ponto de preenchimento, foi escolhido um numero menor que 100 para diminuir o raio, no caso 97, e  angulo diminuido em 1 para a coordenada nao ficar em cima da linha
            $ValY = 100 * sin(deg2rad($ang2));
            $ValYFill = 97 * sin(deg2rad($ang2 - 1));
            imageline($img, 125, 125, $ValX + 125, $ValY + 125, imagecolorallocate($img, 0, 0, 0));
            imagefilltoborder($img, $ValXFill + 125, $ValYFill + 125, $border, $color2);
          
            $RY1 += 30;
            $RY2 += 30;
        }

        //imagejpeg($img2, 'legenda.jpg');
        //imagejpeg($img, 'valores.jpg');

        imagepng($img2, $this->legenda . 'legenda.png');
        imagepng($img, $this->legenda . 'valores.png');

        $srcImage = $this->legenda . "valores.png";
        $srcLegenda = $this->legenda . "legenda.png";

        echo "<center><b>$this->titulo</b><br>" .
        "<img src='$srcImage'> <img src='$srcLegenda'></center>";

        imagedestroy($img2);
        imagedestroy($img);
    }

//GERA GRAFICO EM PIZZA  - FIM - AUTOR: VINICIUS S. PAES (paes.vinicius@gmail.com)
}
