<?php


class BuscaDiscCursadas {

    private $cursadas;
    private $termo = "";

    public function __construct($grr) {


        $linha = array("COD_ATIV_CURRIC");
        $fetch = selecionarWHERE("aproveitamento", $linha, "MATR_ALUNO = '$grr' AND DESCR_SITUACAO = 'APROVADO'");

        $disc = "";
        foreach ($fetch as $rs) {
            $disc = $rs["COD_ATIV_CURRIC"];
            $this->cursadas = $disc;
            $this->termo = $this->termo.",'".$disc."'";
        }
        if (strlen($this->termo) >= 1) {
            $this->termo = substr($this->termo, 1);
        }
    }

    public function getCursadas() {
        return $this->cursadas;
    }
    public function getTermo() {
        return $this->termo;
        
    }

}
