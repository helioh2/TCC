<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of BuscaCategoriasCurso
 *
 * @author danielkarling
 */
include_once URL.'/classes/CategoriaDados.php';

class ListaCategoriasCurso {

    private $categoriasCurso;
    private $nomeCategorias;

    public function __construct($codCurso) {
        try {
            $conn = DataBase::getInstance()->getDb();


            $sql = "SELECT disciplina.categoria FROM disciplina, curso WHERE curso.codigo = '$codCurso' and disciplina.id_curso = curso.id GROUP BY categoria; ";
//echo $sql;

            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $fetch = $stmt->fetchAll();

            foreach ($fetch as $f) {
                $cat = $f["categoria"];
                $this->categoriasCurso[] = new CategoriaDados($cat);
            }
        } catch (Exception $e) {
            echo $e;
        }
        foreach ($this->categoriasCurso as $cat) {
            $this->nomeCategorias[] = $cat->getNome() . "";
        }
    }

    public function getCategorias() {
        return $this->categoriasCurso;
    }

    public function getNomeCategorias() {


        return $this->nomeCategorias;
    }

}
