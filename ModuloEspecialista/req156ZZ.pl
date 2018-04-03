possibilidades(R,L):-
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
	
requisito('DEE090').
	
requisito('DEE045').
	

requisito('DEE046'):-
	disciplina('DEE045').

requisito('DEE047'):-
	disciplina('DEE046'),
	requisito('DEE046').
	
requisito('PCE001').

requisito('PCE006'):-
	disciplina('PCE001').

requisito('PCE011'):-
	disciplina('PCE006'),
	requisito('PCE006').

requisito('PCE017'):-
	disciplina('PCE011'),
	requisito('PCE011').

requisito('DEE044'):-
	disciplina('PCE017'),
	requisito('PCE017').

requisito('PCE014'):-
	disciplina('PCE006').

requisito('PCE015'):-
	disciplina('PCE005').

requisito('PCE010').

requisito('PCE005').

requisito('PCE004'):-
	disciplina('PCE010').

requisito('PCE016').

requisito('DEE048').

requisito('DEE049'):-
	disciplina('DEE045').

requisito('DEE056'):-
	disciplina('DEE090'),
	disciplina('DEE047'),
	requisito('DEE047').

requisito('DEE050').

requisito('DEE051'):-
	disciplina('DEE050'),
	disciplina('DEE046'),
	requisito('DEE046').

requisito('DEE054'):-
	disciplina('DEE047'),
	disciplina('DEE050'),
	requisito('DEE047').

requisito('DEE055'):-
	disciplina('DEE047'),
	requisito('DEE047').	

requisito('DEE058'):-
	disciplina('DEE055'),
	requisito('DEE055').

requisito('DEE057'):-
	disciplina('DEE055'),	
	requisito('DEE055').

requisito('DEE060'):-
	disciplina('DEE057'),
	requisito('DEE057').

requisito('DEE059'):-
	disciplina('DEE047'),
	disciplina('DEE090'),
	disciplina('PCE014'),
	requisito('DEE047'),
	requisito('PCE014').
	
requisito('DEE061'):-
	disciplina('DEE044'),
	requisito('DEE044').

requisito('PCE021').

requisito('DSH014'):-
	disciplina('PCE021').

requisito('DSH015'):-
	disciplina('PCE021').

requisito('DSH016'):-
	disciplina('PCE021').	

requisito('DSH018'):-
	disciplina('DEE057'),
	disciplina('DEE058'),
	disciplina('DSH015'),
	disciplina('DSH014'),
	disciplina('DSH016'),
	requisito('DEE057'),
	requisito('DEE058'),
	requisito('DSH015'),
	requisito('DSH014'),
	requisito('DSH016').	

requisito('DSH017'):-
	disciplina('DSH015'),
	disciplina('DSH014'),
	disciplina('DSH016'),
	requisito('DSH015'),
	requisito('DSH014'),
	requisito('DSH016').

requisito('DSH019'):-
	disciplina('DSH015'),
	disciplina('DSH014'),
	disciplina('DSH016'),
	requisito('DSH015'),
	requisito('DSH014'),
	requisito('DSH016').

requisito('DSH021'):-
	disciplina('DSH019'),
	disciplina('DSH017'),
	requisito('DSH019'),
	requisito('DSH017').	

requisito('DSH020'):-
	disciplina('DSH019'),
	disciplina('DSH017'),
	requisito('DSH019'),
	requisito('DSH017').

requisito('DSH022'):-
	disciplina('DSH020'),
	disciplina('DSH021'),
	requisito('DSH020'),
	requisito('DSH021').

requisito('DSH025'):-
	disciplina('DSH020'),
	disciplina('DSH022'),
	requisito('DSH020'),
	requisito('DSH022').

requisito('DSH026').
