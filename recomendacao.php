
<head>
    <meta charset="UTF-8">
    <title>Recomendações de Disciplinas</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <script src="./js/jquery-3.2.0.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>

</head>
<?php



$grr = $_POST["grr"];
/*
//$horasDedicacao = $_POST["horas"];

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
    $arrayPoss = explode(", ", $possibilidades);
    return $arrayPoss;
}

function calculaImportancias($arrayPossibilidades, $arrayCategorias, $arrayDificuldades, $arquivoQTDRequisitoCurso, $numeroSemanas) {
    $recomendacao = array();
    foreach ($arrayPossibilidades as $possibilidade) {
        $catDisc = new BuscaCategoriaDisc($possibilidade);
        $catPos = $catDisc->getCategoria();
        for ($index = 0; $index < count($arrayCategorias); $index++) {

            if ($arrayCategorias[$index]->getNome() == $catPos) {
                importancia($recomendacao, $arrayDificuldades[$index], $arrayCategorias[$index], $possibilidade, $arquivoQTDRequisitoCurso, $numeroSemanas);
            }
        }
    }
    return $recomendacao;
}

function importancia(&$recomendacao, $dificuldade, $categoria, $possibilidade, $arquivoQTDRequisitoCurso, $numeroSemanas) {

    $pAprov = $categoria->getPercentAprovacao();
    $mFinal = $categoria->getMediaFinal();
    $comando = "java -jar jar/ImportanciaDisc.jar $possibilidade $dificuldade jar/ImportanciaDisc.fcl $arquivoQTDRequisitoCurso";

    $saida2 = exec($comando, $saida2);

    $disciplina = selecionarWHERE("disciplina", array("NOME", "ativa"), "CODIGO = '$possibilidade'");
    $nome = "";
    $ativa = 0;
    foreach ($disciplina as $d) {
        $nome = $d["NOME"];
        $ativa = $d["ativa"];
    }
    $cargaHoraria = 0;
    $CH = selecionarWHERE("disciplina", array("TOTAL_CARGA_HORARIA"), "CODIGO = '$possibilidade'");
    foreach ($CH as $c) {
        $cargaHoraria = $c["TOTAL_CARGA_HORARIA"];
    }

    if ($ativa != "0") {
        $disc = new Disciplina($nome, $possibilidade, $saida2, $cargaHoraria, $pAprov, $mFinal, 0, $ativa);
        $horarios = new BuscaHorariosDisc($possibilidade);
        $disc->setHorarios($horarios->getHorarios());

        //$disc->setHorasDedicacao(($disc->getCargaHoraria() / 2 + $disc->getCargaHoraria() * 101 / ($pAprov + 1) * 101 / ($mFinal + 1 )) / 18);

        $disc->setHorasDedicacao(($disc->getCargaHoraria() / 2 + $disc->getCargaHoraria() * $dificuldade / 12) / $numeroSemanas);
        if ($disc != NULL) {
            $recomendacao[] = $disc;
        }
    }
}

$existe = numLinhasSelecionarWHERE("aproveitamento", array("ID"), "MATR_ALUNO = '$grr'");
if ($existe == 0) {

    echo "<script>alert('GRR não encontrado');</script>";
    print "<script type = 'text/javascript'> location.href = './index.php' </script>";
    die();
}

$curso = new Curso();
$curso->buscarPorGRR($grr);

$listaCategoriasDados = new ListaCategoriasDados($grr);
$categorias = $listaCategoriasDados->getCategorias();

$listaCategoriasCurso = new ListaCategoriasCurso($curso->getCodigo());
$categoiasCurso = $listaCategoriasCurso->getCategorias();

$difs = array();
echo "<center><h2>  CURSO: " . $curso->getCodigo() . " -- " . $curso->getNome() . "</h2></center><br><br>";


foreach ($categorias as $cat) {
    $difs[] = calculaDificuldade($cat);
}

$nomeCategoiasCurso = $listaCategoriasCurso->getNomeCategorias();
$nomeCategorias = $listaCategoriasDados->getNomeCategorias();

//inserir categorias nao cursadas ainda na lista 
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

//cria tabela dificuldade por disciplina
$listaDificuldade = new Dificuldades($categorias, $difs);

//lista de disciplinas cursadas pelo aluno
$cursadas = new DiscCursadasAluno($grr);

//construcao da string para usar no prolog
$strTermo = $cursadas->getTermo() . "";

//nome dinâmico do arquivo de requisitos do curso
$arquivoRequisitoCurso = "jar/req" . $curso->getCodigo() . ".pl";
$arrayPossibilidades = calculaPossibilidades($strTermo, $arquivoRequisitoCurso);

//nome dinâmico do arquivo de requisitos do curso
$arquivoQTDRequisitoCurso = "jar/qtdReq" . $curso->getCodigo() . ".pl";

//calcula a importancia de todas possibilidades, junto com as horas de dedicacao semanal
$recomendacao = calculaImportancias($arrayPossibilidades, $categorias, $difs, $arquivoQTDRequisitoCurso, $curso->getSemanas());

//ordenar a lista de recomendacao
usort($recomendacao, "Disciplina::ordenaDisciplinas");

$horas = 0;
$recomendacaoFinal = array();


//NAO USADO. SERVE PARA CALCULAR AS HORAS TOTAIS DE DEDICACAO
foreach ($recomendacao as $d) {
    $recomendacaoFinal[] = $d;
    $horas += $d->getHorasDedicacao();
}
//NAO USADO. SERVE PARA CALCULAR AS HORAS TOTAIS DE DEDICACAO
//cria lista de colisao de horarios para cada disciplina
for ($i = 0; $i < count($recomendacaoFinal); $i++) {
    $antigo = $recomendacaoFinal[$i]->getHorarios();
    foreach ($antigo as $h) {
        for ($i2 = $i + 1; $i2 < count($recomendacaoFinal); $i2++) {

            if (in_array($h, $recomendacaoFinal[$i2]->getHorarios()) != FALSE) {

                $recomendacaoFinal[$i2]->insereColisao($recomendacaoFinal[$i]->getCodigo());
            }
        }
    }
}
?>
*/
require_once './Recomendacao.php';
$recomendacao = new Recomendacao($grr);
$recomendacao->start();
        
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
                foreach ($recomendacao->getRecomendacaoFinal() as $rec) {
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



    <button class="btn-primary" data-toggle="modal" data-target="#modalDifs">Dificuldade</button>
    <br>
    <br>

    <center>
        <div class="modal fade" id="modalDifs">
            <div class="modal-lg bg-info">
                <div class="modal-content">
                    <div class="modal-header bg-info">
                        <button type="button" class="close" data-dismiss="modal"><span>×</span></button>
                        <h4 class="modal-title text-info bg-info">Dificuldade por Categoria</h4>
                    </div>
                    <div class="modal-body bg-warning">
                        <center>

                            <?php
                            $recomendacao->getListaDificuldade()->imprimeDificuldades();
                            ?>

                        </center>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </center>
    <a href="index.php">VOLTAR</a>
</body>

