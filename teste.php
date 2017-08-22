<?php

 $fun = new Funcionario("Daniel", 200);

        $fun2 = new Funcionario("Outro", 100);
        $emp = new Empresa("DAK S.A.");
        $emp->contratarFuncionario($fun, "dono", 1200);
        $emp->contratarFuncionario($fun2, "sub dono", 1000);

        //$emp->pagarSalario();
        $emp->pagarSalario();
        $emp->pagarSalario();
        $emp->pagarSalario();  
        //var_dump($emp);
        foreach ($emp->funcionarios as $f) {
            echo $f->nomeFuncionario."<br>";
            echo $f->cargo."<br>";
            echo $f->empresa."<br>";
            echo $f->saldoConta."<br>"."<br>";

        }
        
        
       
        try {
            $con = new PDO("mysql:host=localhost;dbname=cursoPHPOO", "root", "");
        } catch (Exception $ex) {
            echo "Erro na conexão com o banco de dados ".$ex->getMessage();
        }
       //$con->exec("INSERT INTO Produto (produto, descricao, id_categoria) values('injection', 'para iniciantes',1)");
        
        
        
        $sql ="SELECT * FROM Produto WHERE id_categoria = ?";
        $stmt = $con->prepare($sql);
        $stmt->bindValue(1, "4");
        $stmt->execute();
        $instant = $stmt->fetchAll();
        
        foreach ($instant as $linha) {
            echo $linha["produto"]."<br>";
            echo $linha["descricao"]."<br><br>";
        }
       
        
        

