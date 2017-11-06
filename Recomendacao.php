<?php

require_once 'classes/BD/ListaCategoriasDados.php';
require_once 'classes/BD/DiscCursadasAluno.php';
require_once 'classes/BD/BuscaCategoriaDisc.php';
require_once 'classes/BD/crudPDO.php';
require_once 'classes/Disciplina.php';
require_once './classes/Curso.php';
require_once 'classes/BD/ListaCategoriasCurso.php';
require_once './classes/BD/BuscaHorariosDisc.php';
require_once './classes/Dificuldades.php';

class Recomendacao {

    private $grr = "";
    private $recomendacaoFinal = array();
    private $listaDificuldade = array();

    function __construct($grr) {
        $this->grr = $grr;
    }

    function getListaDificuldade() {
        return $this->listaDificuldade;
    }

    function getRecomendacaoFinal() {
        return $this->recomendacaoFinal;
    }

    function setListaDificuldade($listaDificuldade) {
        $this->listaDificuldade = $listaDificuldade;
    }

    function setRecomendacaoFinal($recomendacaoFinal) {
        $this->recomendacaoFinal = $recomendacaoFinal;
    }

    //calcula dificuldade nas categorias 
    public function calculaDificuldade($categoria) {
        $media = $categoria->getMediaFinal() . "";
        $percApr = $categoria->getPercentAprovacao() . "";
        $qtdDiscCursadas = $categoria->getQtd();
    //comando .jar, arquivo fuzzy, media, aprovacao, qtdade de disciplina cursada
        $comando = "java -jar jar/Dificuldade.jar jar/Dificuldade.fcl $media $percApr $qtdDiscCursadas";
        $saida = exec($comando, $saida);
        return $saida;
    }

    //verifica disciplinas que podem ser matriculadas a partir dos pre requisitos ja cursados
    public function calculaPossibilidades($strTermo, $arquivoRequisitoCurso) {
    //comando .jar, arquivo Prolog, string disciplinas cursadas
        $strExec = "java -jar jar/Possibilidade.jar $arquivoRequisitoCurso \"$strTermo\"";
        $saida2 = exec($strExec, $saida2);

        $tamanho = strlen($saida2);
        $possibilidades = substr($saida2, 1, $tamanho - 2);
        $arrayPoss = explode(", ", $possibilidades);
        return $arrayPoss;
    }

    //calcula as importancias das possibilidades de matricula, baseado na dificuldade, qtdade de requisicoes ...
    public function calculaImportancias($arrayPossibilidades, $arrayCategorias, $arrayDificuldades, $arquivoQTDRequisitoCurso, $numeroSemanas) {
        $recomendacao = array();
        foreach ($arrayPossibilidades as $possibilidade) {
            $catDisc = new BuscaCategoriaDisc($possibilidade);
            $catPos = $catDisc->getCategoria();
            for ($index = 0; $index < count($arrayCategorias); $index++) {

                if ($arrayCategorias[$index]->getNome() == $catPos) {
                    $this->importancia($recomendacao, $arrayDificuldades[$index], $arrayCategorias[$index], $possibilidade, $arquivoQTDRequisitoCurso, $numeroSemanas);
                }
            }
        }
        return $recomendacao;
    }

    //calcula a importancia da disciplina, chamada pela funcao calculaImportancias()
    public function importancia(&$recomendacao, $dificuldade, $categoria, $possibilidade, $arquivoQTDRequisitoCurso, $numeroSemanas) {

        $pAprov = $categoria->getPercentAprovacao();
        $mFinal = $categoria->getMediaFinal();
    //comando .jar, possibilidade, dificuldade, arquivo Fuzzy, arquivo Prolog
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

//funcao que inicia processo de recomendacao do objeto
    public function start() {

        $existe = numLinhasSelecionarWHERE("aproveitamento", array("ID"), "MATR_ALUNO = '$this->grr'");
        if ($existe == 0) {

            echo "<script>alert('GRR não encontrado');</script>";
            print "<script type = 'text/javascript'> location.href = './index.php' </script>";
            die();
        }

        $curso = new Curso();
        $curso->buscarPorGRR($this->grr);

        $listaCategoriasDados = new ListaCategoriasDados($this->grr);
        $categorias = $listaCategoriasDados->getCategorias();

        $listaCategoriasCurso = new ListaCategoriasCurso($curso->getCodigo());
        $categoiasCurso = $listaCategoriasCurso->getCategorias();

        $difs = array();
       // echo "<center><h2>  CURSO: " . $curso->getCodigo() . " -- " . $curso->getNome() . "</h2></center><br><br>";

// +++++++++++++++++++++++++++++++ CHAMA MODULO DIFICULDADE ++++++++++++++++++++++++++++++++++++
        foreach ($categorias as $cat) {
            $difs[] = $this->calculaDificuldade($cat);
        }
        $nomeCategorias = $listaCategoriasDados->getNomeCategorias();
        $nomeCategoiasCurso = $listaCategoriasCurso->getNomeCategorias();


//inserir categorias ainda nao cursadas na lista 
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
        $this->listaDificuldade = new Dificuldades($categorias, $difs);

//lista de disciplinas cursadas pelo aluno
        $cursadas = new DiscCursadasAluno($this->grr);

//construcao da string para usar no prolog
        $strTermo = $cursadas->getTermo() . "";

//nome dinâmico do arquivo de requisitos do curso
        $arquivoRequisitoCurso = "jar/req" . $curso->getCodigo() . ".pl";

// +++++++++++++++++++++++++++++++ CHAMA MODULO POSSIBILIDADE ++++++++++++++++++++++++++++++++++++
        $arrayPossibilidades = $this->calculaPossibilidades($strTermo, $arquivoRequisitoCurso);



//nome dinâmico do arquivo de requisitos do curso
        $arquivoQTDRequisitoCurso = "jar/qtdReq" . $curso->getCodigo() . ".pl";

//calcula a importancia de todas possibilidades, junto com as horas de dedicacao semanal
// +++++++++++++++++++++++++++++++ CHAMA MODULO IMPORTANCIADISC ++++++++++++++++++++++++++++++++++++
        $recomendacao = $this->calculaImportancias($arrayPossibilidades, $categorias, $difs, $arquivoQTDRequisitoCurso, $curso->getSemanas());

//ordenar a lista de recomendacao
        usort($recomendacao, "Disciplina::ordenaDisciplinas");

        $horas = 0;
        //$recomendacaoFinal = array();
//NAO USADO. SERVE PARA CALCULAR AS HORAS TOTAIS DE DEDICACAO
        foreach ($recomendacao as $d) {
            $this->recomendacaoFinal[] = $d;
            $horas += $d->getHorasDedicacao();
        }
//NAO USADO. SERVE PARA CALCULAR AS HORAS TOTAIS DE DEDICACAO

        

//cria lista de colisao de horarios para cada disciplina
        for ($i = 0; $i < count($this->recomendacaoFinal); $i++) {
            $antigo = $this->recomendacaoFinal[$i]->getHorarios();
            foreach ($antigo as $h) {
                for ($i2 = $i + 1; $i2 < count($this->recomendacaoFinal); $i2++) {

                    if (in_array($h, $this->recomendacaoFinal[$i2]->getHorarios()) != FALSE) {

                        $this->recomendacaoFinal[$i2]->insereColisao($this->recomendacaoFinal[$i]->getCodigo());
                    }
                }
            }
        }
    }

}
