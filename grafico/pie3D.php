<?php$sum = $_GET['total'];$degrees = Array();$diameter = 200;$radius = $diameter/2;$slice[1] = $_GET['total'] - $_GET['usado'];$slice[2] = $_GET['usado'];$neg = $slice[1]<0 ? -1: 1;if ($neg == -1){    $slice[1] = 0;    $slice[2] = $_GET['total'];}//Converte para grausfor ($y=1; $y<=2; $y++){$degrees[$y] = ($slice[$y]/$sum) * 360;}Header("Content-Type: image/png");require ('config.inc.php');$im = ImageCreate(450, 300);//Pie Colors//Fill$cor_01['R'] = 255;$cor_01['G'] = 255;$cor_01['B'] = 255;//Free color$cor_02['R'] = 177;$cor_02['G'] = 201;$cor_02['B'] = 237;//Used Color$cor_03['R'] = 210;$cor_03['G'] = 210;$cor_03['B'] = 210;//Cores$white = ImageColorAllocate($im, 255, 255, 255);$black = ImageColorAllocate($im, 0, 0, 0);$cinza = ImageColorAllocate($im, 102, 102, 102);$cor01 = ImageColorAllocate($im, $cor_01['R'],$cor_01['G'],$cor_01['B']);$cor02 = ImageColorAllocate($im, $cor_02['R'],$cor_02['G'],$cor_02['B']);$cor03 = ImageColorAllocate($im, $cor_03['R'],$cor_03['G'],$cor_03['B']);if ($neg == -1){    $cor03 = ImageColorAllocate($im, 255, 50, 50);}// preenche o circuloImageFill($im, 0, 0, $cor01);// desenha a linha baseImageArc($im, 153, 153, $diameter, $diameter,315,135,$black);ImageLine($im, 150,150, 225, 150, $black);for ($z=1; $z<=2; $z++){// calula o arcoImageArc($im, 150, 150, $diameter, $diameter, $last_angle,($last_angle+$degrees[$z]), $black);$last_angle = $last_angle+$degrees[$z];// calculate coordinate of end-point of each arc by obtaining// length of segment and adding radius// remember that cos() and sin() return value in radians// and have to be converted back to degrees!$end_x = round(150 + ($radius * cos($last_angle*pi()/180)));$end_y = round(150 + ($radius * sin($last_angle*pi()/180)));// demarcate slice with another lineImageLine($im, 150, 150, $end_x, $end_y, $black);}// this section is meant to calculate the mid-point of each slice// so that it can be filled with colour// initialize some variables$prev_angle = 0;$pointer = 0;$zz = 1;for ($z=1; $z<=2; $z++){// to calculate mid-point of a slice, the procedure is to use an angle bisector// and then obtain the mid-point of that bisector$pointer = $prev_angle + $degrees[$z];$this_angle = ($prev_angle + $pointer) / 2;$prev_angle = $pointer;// get end-point of angle bisector$end_x = round(150 + ($radius * cos($this_angle*pi()/180)));$end_y = round(150 + ($radius * sin($this_angle*pi()/180)));// given start point (150,150) and end-point above, mid-point can be// calculated with standard mid-point formula$mid_x = round((150+($end_x))/2);$mid_y = round((150+($end_y))/2);// depending on which slice, fill with appropriate colourif ($z == 1){ImageFillToBorder($im, $mid_x, $mid_y, $black, $cor02);}else if ($z == 2){ImageFillToBorder($im, $mid_x, $mid_y, $black, $cor03);}}//Legenda.$ret_x01=300;$ret_y01=40;$slice[1] = round($slice[1]/$_GET['total'] * 100,1);$slice[2] = round($slice[2]/$_GET['total'] * 100,1);imagefilledrectangle($im, $ret_x01,$ret_y01,$ret_x01 + 15 ,$ret_y01 + 15,$cinza);imagerectangle($im,$ret_x01 - 3 ,$ret_y01 - 3,$ret_x01 + 12 ,$ret_y01 +12,$black);imagefilltoborder($im,$ret_x01 - 1,$ret_y01 +11,$black,$cor02);imagestring($im,3,$ret_x01 + 20, $ret_y01, $slice[1] . "% $strFree",$black);imagestring($im,3,$ret_x01-60,$ret_y01 + 200,"$strSpcAll : " . round(($_GET['total'])/1024,0) ." $byteUnits[1]",$black);imagestring($im,3,$ret_x01-60,$ret_y01 + 215,"$strUsed : " . round(($_GET['usado'])/1024,0) ." $byteUnits[1]",$black);imagestring($im,3,$ret_x01-60,$ret_y01 + 230,"$strFree : " . round(($_GET['total'] - $_GET['usado'])/1024,0) ." $byteUnits[1]",$black);$ret_x01=300;$ret_y01=70;imagefilledrectangle($im, $ret_x01,$ret_y01,$ret_x01 + 15 ,$ret_y01 + 15,$cinza);imagerectangle($im,$ret_x01 - 3 ,$ret_y01 - 3,$ret_x01 + 12 ,$ret_y01 +12,$black);imagefilltoborder($im,$ret_x01 - 1,$ret_y01 +11,$black,$cor03);imagestring($im,3,$ret_x01 + 20, $ret_y01, $slice[2] . "% $strUsed",$black);//sombra no circuloImageFillToBorder($im, 150 + 72, 150 + 72, $black, $cinza);ImageArc($im, 153, 153, $diameter, $diameter,315,135,$cinza);// write stringImageString($im, 5, 80, 10, "$strSpcUsed", $black);// output to browserImagePNG($im);?>