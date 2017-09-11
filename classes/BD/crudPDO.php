<?php

require_once 'DataBase.php';

function inserir($tabela, array $dados) {
    $campos = implode(",", array_keys($dados));
    $valores = ":" . implode(", :", array_keys($dados));

    $sql = "INSERT INTO {$tabela} ({$campos}) VALUES ({$valores})";
    //echo $sql."<br><br>";

    $conn = DataBase::getInstance()->getDb();


    $stmt = $conn->prepare($sql);
    foreach ($dados as $chave => $valor) {
        $tipo = (is_int($valor)) ? PDO::PARAM_INT : PDO::PARAM_STR;
        $stmt->bindValue(":$chave", $valor, $tipo);
    }
    if ($stmt->execute()) {
        return $conn->lastInsertId();
    }
    return FALSE;
}

function alterar($tabela, $dados, $condicao) {

    $conn = DataBase::getInstance()->getDb();

    $parametro = null;
    foreach ($dados as $chave => $valor) {
        $parametro .="$chave=:$chave,";
    }
    $parametro = rtrim($parametro, ',');


    $sql = "UPDATE {$tabela} SET {$parametro} WHERE {$condicao}";


    $stmt = $conn->prepare($sql);

    foreach ($dados as $chave => $valor) {
        $tipo = (is_int($valor)) ? PDO::PARAM_INT : PDO::PARAM_STR;
        $stmt->bindValue(":$chave", $valor, $tipo);
    }
    return $stmt->execute();
}

function deletar($tabela, $condicao) {

    $conn = DataBase::getInstance()->getDb();


    $sql = "DELETE FROM {$tabela} WHERE {$condicao}";


    $stmt = $conn->prepare($sql);
    return $stmt->execute();
}

function selecionar($tabela, $array) {

    $conn = DataBase::getInstance()->getDb();
    $linhas = implode(",", array_values($array));

    $sql = "SELECT {$linhas} FROM {$tabela}";

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $fetch = $stmt->fetchAll();

    return $fetch;
    /* para imprimir
      foreach ($fetch as $cli) {
      foreach ($array as $l) {
      echo $cli[$l]."<br>";
      }
      echo '<br>';
      } */
}

function selecionarWHERE($tabela, $array, $condicao) {

    $conn = DataBase::getInstance()->getDb();
    $linhas = implode(",", array_values($array));

    $sql = "SELECT {$linhas} FROM {$tabela} WHERE {$condicao}";


    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $fetch = $stmt->fetchAll();

    /* foreach ($fetch as $cli) {
      foreach ($array as $l) {
      echo $cli[$l] . "<br>";
      }
      echo '<br>';
      } */

    return $fetch;
}

function numLinhasSelecionarWHERE($tabela, $array, $condicao) {

    $conn = DataBase::getInstance()->getDb();
    $linhas = implode(",", array_values($array));

    $sql = "SELECT {$linhas} FROM {$tabela} WHERE {$condicao}";
    echo "<br>" . $sql;

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $line = $stmt->rowCount();

    /* foreach ($fetch as $cli) {
      foreach ($array as $l) {
      echo $cli[$l] . "<br>";
      }
      echo '<br>';
      } */
    echo "linhas " . $line . "<br>";
    return $line;
}
