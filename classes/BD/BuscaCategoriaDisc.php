<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CategoriaDisc
 *
 * @author danielkarling
 */



class BuscaCategoriaDisc {

    private $categoria = "";
    

    public function BuscaCategoriaDisc($cod) {
        try {
// create our mysql database connection
            $conn = DataBase::getInstance()->getDb();

            $query = "SELECT categoria FROM disciplina  WHERE CODIGO = '$cod' LIMIT 1;";


            $stmt = $conn->prepare($query);
            $stmt->execute();
            $linha = $stmt->fetch(PDO::FETCH_ASSOC);
            $this->categoria = $linha["categoria"];
            
           // echo "funcao CategoriaDisc".$this->categoria."<br>";
            
        } catch (Exception $e) {
            echo $e;
        }
    }

    public
            function getCategoria() {
        return $this->categoria;
    }

}
