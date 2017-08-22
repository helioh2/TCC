<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$nomeCurso = $_POST["nomeCurso"];
$idCurso = $_POST["idCurso"];
$codDisciplina = $_POST["codDisciplina"];
$codRequisito = "";
if (!empty($_POST["codRequisito"])) {
    $codRequisito = $_POST["codRequisito"];
}
$codCurso = $_POST["codCurso"];

$listaRequisitos = $codRequisito;



// escrevendo na base de conhecimento de requisitos de disciplinas
if (!(file_exists("../jar/req" . $codCurso . ".pl"))) {
    $fp = fopen("../jar/req" . $codCurso . ".pl", "a");

    fwrite($fp, "possibilidades(R,L):-
	base(L),
	podeCursar(R).

base([Cab|Cauda]):-
	assert(disciplina(Cab)),
	assert(cursada(Cab)),	
	base(Cauda),!.
	
base(Cab):-
	assert(disciplina(Cab)),
	assert(cursada(Cab)),!.
	
base([]):-!.

podeCursar(R):- findall(X,requisito(X),Lista),
		naoCursou(R,Lista).

naoCursou([],[]):-!.

naoCursou([],[X]):-
	disciplina(X),!.

naoCursou([X],[X]):-
	not(disciplina(X)),!.


naoCursou(R,[Cab|Cauda]):-
	disciplina(Cab),
	naoCursou(R,Cauda),!.

naoCursou([Cab|R],[Cab|Cauda]):-
	not(disciplina(Cab)),
	naoCursou(R,Cauda),!.	
	
verLista([]).

verLista([Cab|Cauda]):-
	write(Cab),nl,
	verLista(Cauda),!.

verLista(X):- write(X).
");
} else {

    $fp = fopen("../jar/req" . $codCurso . ".pl", "a");
}

if ($codRequisito == "") {
    fwrite($fp, "\n\nrequisito('" . $codDisciplina . "').\n");
} else {
    fwrite($fp, "\n\nrequisito('" . $codDisciplina . "'):-\n");
    foreach ($listaRequisitos as $requisito) {
        fwrite($fp, "disciplina('" . $requisito . "'),\n");
        fwrite($fp, "requisito('" . $requisito . "'),\n");
    }
    fwrite($fp, "true.");
}
fclose($fp);


//escrevendo no arquivo de quantidade de requisitos

if (!(file_exists("../jar/qtdReq" . $codCurso . ".pl"))) {
    $fp2 = fopen("../jar/qtdReq" . $codCurso . ".pl", "a");
    fwrite($fp2, "		  
exige(X, Y):- requisitoDireto(Y, X).
exige(X, Z):- requisitoDireto(Y, X), exige(Y, Z).

requisito(X, Y) :- exige(Y, X).

count([],0).
count([_|T],Acc):- count(T,Acc2), Acc is 1+Acc2. 

retiraRepetidos([],[]):-!.
retiraRepetidos([X],[X]):-!.
retiraRepetidos([H|T],T2):- member(H,T), retiraRepetidos(T,T2),!.
retiraRepetidos([H|T],[H|T2]):- not(member(H,T)), retiraRepetidos(T,T2).

countReq(X,Acc):- findall(Y,(requisito(X,Y)),L),retiraRepetidos(L,LUnique),  count(LUnique,Acc).\n");
} else {
    $fp2 = fopen("../jar/qtdReq" . $codCurso . ".pl", "a");
}if ($codRequisito == "") {
    
} else {
    foreach ($listaRequisitos as $requisito) {
        fwrite($fp2, "\n\nrequisitoDireto('".$requisito."', X) :- X = '".$codDisciplina."'. \n");
    }
}
fclose($fp2);

print "<script type = 'text/javascript'> location.href = './escrevendoProlog.php?idCurso=$idCurso&nomeCurso=$nomeCurso&codigo=$codCurso' </script>";
