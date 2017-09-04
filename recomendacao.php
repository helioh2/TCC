
<head>
    <meta charset="UTF-8">
    <title>Recomendações de Disciplinas</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">

</head>
<?php
require_once 'classes/BD/BuscaCategoriaAluno.php';
require_once 'classes/BD/BuscaDiscCursadas.php';
require_once 'classes/BD/BuscaCategoriaDisc.php';
require_once 'classes/BD/crudPDO.php';
require_once 'classes/Disciplina.php';
require_once 'classes/BD/BuscaCursoDados.php';
require_once 'classes/BD/BuscaCategoriasCurso.php';
require_once './classes/BD/BuscaHorariosDisc.php';


$grr = $_POST["grr"];
$horasDedicacao = $_POST["horas"];

function calculaDificuldade($categoria) {
    $media = $categoria->getMediaFinal() . "";
    $percApr = $categoria->getPercentAprovacao() . "";
    $qtdDiscCursadas = $categoria->getQtd();
    $comando = "java -jar jar/Dificuldade.jar jar/Dificuldade.fcl $media $percApr $qtdDiscCursadas";
    $saida = exec($comando, $saida);
    return $saida;
}

function calculaPossibilidades($strTermo, $arquivoRequisitoCurso) {

    $strExec = "java -jar jar/Possibilidade.jar $arquivoRequisitoCurso \"$strTermo\"";
    $saida2 = exec($strExec, $saida2);

    $tamanho = strlen($saida2);
    $possibilidades = substr($saida2, 1, $tamanho - 2);
  //  echo "possibilidades de cursar <br>" . $possibilidades . "<br><br><br>";                             //echooooooooo
    $arrayPoss = explode(", ", $possibilidades);
    return $arrayPoss;
}

function calculaImportancias($arrayPossibilidades, $arrayCategorias, $arayDificuldades, $arquivoQTDRequisitoCurso) {
    $recomendacao = array();
    foreach ($arrayPossibilidades as $pos) {
        $catDisc = new BuscaCategoriaDisc($pos);
        $catPos = $catDisc->getCategoria();
        for ($index = 0; $index < count($arrayCategorias); $index++) {

            if ($arrayCategorias[$index]->getNome() == $catPos) {
                $dificuldade = $arayDificuldades[$index];
                $pAprov = $arrayCategorias[$index]->getPercentAprovacao();
                $mFinal = $arrayCategorias[$index]->getMediaFinal();
                $comando = "java -jar jar/ImportanciaDisc.jar $pos $arayDificuldades[$index] jar/ImportanciaDisc.fcl $arquivoQTDRequisitoCurso";
                //echo $comando."<br>";
                $saida2 = exec($comando, $saida2);
                $disciplina = selecionarWHERE("disciplina", array("NOME", "ativa"), "CODIGO = '$pos'");
                $nome = "";
                $ativa = 0;
                foreach ($disciplina as $d) {
                    $nome = $d["NOME"];
                    $ativa = $d["ativa"];
                }
                $cargaHoraria = 0;
                $CH = selecionarWHERE("disciplina", array("TOTAL_CARGA_HORARIA"), "CODIGO = '$pos'");
                foreach ($CH as $c) {
                    $cargaHoraria = $c["TOTAL_CARGA_HORARIA"];
                }

                if ($ativa != "0") {
                    $disc = new Disciplina($nome, $pos, $saida2, $cargaHoraria, $pAprov, $mFinal, 0, $ativa);


                    $horarios = new BuscaHorariosDisc($pos);
                    $disc->setHorarios($horarios->getHorarios());

                    //$disc->setHorasDedicacao(($disc->getCargaHoraria() / 2 + $disc->getCargaHoraria() * 101 / ($pAprov + 1) * 101 / ($mFinal + 1 )) / 18);
                    $disc->setHorasDedicacao(($disc->getCargaHoraria() / 2 + $disc->getCargaHoraria() * $dificuldade / 12) / 18);
                    $recomendacao[] = $disc;
                    // $disc->imprimeDisciplina();
                }
            }
        }
    }
    return $recomendacao;
}

$curso = new BuscaCursoDados($grr);

$bcd = new BuscaCategoriaAluno($grr);
$categorias = $bcd->getCategorias();

$bcc = new BuscaCategoriasCurso($curso->getCodigo());
$categoiasCurso = $bcc->getCategorias();

$difs = array();
echo "<center>  CURSO: " . $curso->getCodigo() . " -- " . $curso->getNome() . "</center>";


foreach ($categorias as $cat) {
    $difs[] = calculaDificuldade($cat);
}



$nomeCategoiasCurso = $bcc->getNomeCategorias();
$nomeCategorias = $bcd->getNomeCategorias();

/*
  foreach ($nomeCategorias as $nome) {
  echo "CATALUNO " . $nome . "<br>";
  }
  echo "<br>";
  foreach ($nomeCategoiasCurso as $nome1) {
  echo "CATCURSO " . $nome1 . "<br>";
  }
  echo "<br>";
 */
foreach ($nomeCategoiasCurso as $catCurso) {
    if ((in_array($catCurso, $nomeCategorias))) {
        
    } else {

        $novaCat = new CategoriaDados($catCurso);
        $novaCat->setMediaFinal(100);
        $novaCat->setPercentAprovacao(100);
        $categorias[] = $novaCat;
        $difs[] = 0;
    }
}

for ($index1 = 0; $index1 < count($difs); $index1++) {
    echo $categorias[$index1]->getNome() . "- <br>" . $difs[$index1] . "-<br><br>";
}


$cursadas = new BuscaDiscCursadas($grr);
$strTermo = $cursadas->getTermo() . "";
//echo $strTermo;
$arquivoRequisitoCurso = "jar/req" . $curso->getCodigo() . ".pl";             //nome dinâmico do arquivo de requisitos do curso


//echo $strTermo;                                                                                     //echoooooo

$arrayPossibilidades = calculaPossibilidades($strTermo, $arquivoRequisitoCurso);
$arquivoQTDRequisitoCurso = "jar/qtdReq" . $curso->getCodigo() . ".pl";             //nome dinâmico do arquivo de requisitos do curso
$recomendacao = array();

$recomendacao = calculaImportancias($arrayPossibilidades, $categorias, $difs, $arquivoQTDRequisitoCurso);



usort($recomendacao, "Disciplina::ordenaDisciplinas");

$horas = 0;
$recomendacaoFinal = array();



foreach ($recomendacao as $d) {
    //if ($horas + $d->getHorasDedicacao() <= $horasDedicacao) {

    $recomendacaoFinal[] = $d;
    $horas += $d->getHorasDedicacao();
    // }
}


/*
  foreach ($recomendacaoFinal as $disciplina) {
  $matriz = array($disciplina->getNome() => array());
  }
  foreach ($recomendacaoFinal as $disciplina) {

  foreach ($disciplina->getHorarios() as $h) {
  $matriz[$disciplina->getNome()][] = $h;
  }
  }

  foreach ($recomendacaoFinal as $d) {
  foreach ($matriz[$d->getNome()] as $hora) {
  echo $hora . " ";
  }
  echo "<br>";
  }
 */

//echo "<br><br><br><br><br><br><br><br>";
for ($i = 0; $i < count($recomendacaoFinal); $i++) {
    $antigo = $recomendacaoFinal[$i]->getHorarios();
    foreach ($antigo as $h) {
        for ($i2 = $i + 1; $i2 < count($recomendacaoFinal); $i2++) {

            if (in_array($h, $recomendacaoFinal[$i2]->getHorarios()) != FALSE) {
                //echo "<br>colisão de horários com ".$recomendacaoFinal[$i]->getNome()." e ".$recomendacaoFinal[$i2]->getNome()."<br>";
                $recomendacaoFinal[$i2]->insereColisao($recomendacaoFinal[$i]->getCodigo());
            }
        }
    }
}
?>
<body>
<center>
    <div class="col-lg-1">

    </div>
    <div class="container-fluid">
        <div class="col-lg-10">
            <table class="table table-striped">
                <tr class="text-center">
                    <td class="alert-info"> Código </td>
                    <td class="alert-info"> Disciplina </td>
                    <td class="alert-info"> Recomendação </td>
                    <td class="alert-info"> Horas de Dedicação Semanal </td>
                    <td class="alert-info"> Horários </td>
                    <td class="alert-info"> Colisão de Horários </td>
                </tr>
                <?php
                foreach ($recomendacaoFinal as $rec) {
                    ?>

                    <tr class="text-center"> 
                        <td  class="text-success" ><?php echo $rec->getCodigo(); ?></td>
                        <td  class="text-success" ><?php echo $rec->getNome(); ?></td>
                        <td  class="text-success" ><?php echo (Integer) $rec->getImportancia() . "%"; ?></td>
                        <td class="text-success"><?php echo (Integer) $rec->getHorasDedicacao(); ?></td>
                        <td class="text-danger">
                            <?php
                            foreach ($rec->getHorarios() as $h) {
                                echo $h . " ";
                            }
                            ?>
                        </td> <td class="text-danger">
                            <?php
                            foreach ($rec->getColisoes() as $col) {
                                $fetch = selecionarWHERE("disciplina", array("NOME"), "CODIGO = '$col' LIMIT 1");
                                foreach ($fetch as $f) {
                                    echo $f["NOME"] . "<br> ";
                                }
                            }
                            ?>
                        </td>
                    </tr>
                    <?php
                }
                ?>

            </table>
        </div>
    </div>

    <br><br>
    <a href="index.php">VOLTAR</a>
</center>
</body>

