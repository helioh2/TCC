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

requisito('DSH010'):-
disciplina('DSH008'),
requisito('DSH008'),
true.

requisito('DEE046'):-
disciplina('DEE045'),
requisito('DEE045'),
true.

requisito('DEE041'):-
disciplina('DEE040'),
requisito('DEE040'),
true.

requisito('DEE049'):-
disciplina('DEE045'),
requisito('DEE045'),
true.

requisito('DEE047'):-
disciplina('DEE046'),
requisito('DEE046'),
true.

requisito('DEE052'):-
disciplina('DEE041'),
requisito('DEE041'),
true.

requisito('DSH011'):-
disciplina('DSH009'),
requisito('DSH009'),
true.

requisito('DEE042'):-
disciplina('DEE041'),
requisito('DEE041'),
true.

requisito('DEE051'):-
disciplina('DEE046'),
requisito('DEE046'),
disciplina('DEE050'),
requisito('DEE050'),
true.

requisito('DEE054'):-
disciplina('DEE047'),
requisito('DEE047'),
disciplina('DEE051'),
requisito('DEE051'),
true.

requisito('DEE043'):-
disciplina('DEE042'),
requisito('DEE042'),
true.

requisito('DEE055'):-
disciplina('DEE047'),
requisito('DEE047'),
true.

requisito('DEE056'):-
disciplina('DEE090'),
requisito('DEE090'),
disciplina('DEE047'),
requisito('DEE047'),
true.

requisito('DEE058'):-
disciplina('DEE055'),
requisito('DEE055'),
true.

requisito('DSH014'):-
disciplina('DSH013'),
requisito('DSH013'),
true.

requisito('DSH016'):-
disciplina('DSH013'),
requisito('DSH013'),
true.

requisito('DEE044'):-
disciplina('DEE043'),
requisito('DEE043'),
true.

requisito('DSH015'):-
disciplina('DSH013'),
requisito('DSH013'),
true.

requisito('DEE057'):-
disciplina('DEE055'),
requisito('DEE055'),
true.

requisito('DSH018'):-
disciplina('DEE058'),
requisito('DEE058'),
disciplina('DSH015'),
requisito('DSH015'),
disciplina('DEE057'),
requisito('DEE057'),
true.

requisito('DEE059'):-
disciplina('DEE090'),
requisito('DEE090'),
disciplina('DEE047'),
requisito('DEE047'),
disciplina('DEE052'),
requisito('DEE052'),
true.

requisito('DEE060'):-
disciplina('DEE057'),
requisito('DEE057'),
true.

requisito('DSH019'):-
disciplina('DSH014'),
requisito('DSH014'),
disciplina('DSH016'),
requisito('DSH016'),
disciplina('DSH015'),
requisito('DSH015'),
true.

requisito('DSH021'):-
disciplina('DSH019'),
requisito('DSH019'),
disciplina('DSH017'),
requisito('DSH017'),
true.

requisito('DSH020'):-
disciplina('DSH019'),
requisito('DSH019'),
disciplina('DSH017'),
requisito('DSH017'),
true.

requisito('DEE061'):-
disciplina('DEE044'),
requisito('DEE044'),
true.

requisito('DSH023'):-
disciplina('DEE047'),
requisito('DEE047'),
disciplina('DEE058'),
requisito('DEE058'),
disciplina('DSH019'),
requisito('DSH019'),
disciplina('DSH017'),
requisito('DSH017'),
true.

requisito('DSH022'):-
disciplina('DSH021'),
requisito('DSH021'),
disciplina('DSH020'),
requisito('DSH020'),
true.

requisito('DSH025'):-
disciplina('DSH021'),
requisito('DSH021'),
disciplina('DSH020'),
requisito('DSH020'),
true.

requisito('DSH024'):-
disciplina('DSH023'),
requisito('DSH023'),
true.

requisito('DSH017'):-
disciplina('DSH014'),
requisito('DSH014'),
disciplina('DSH016'),
requisito('DSH016'),
disciplina('DSH015'),
requisito('DSH015'),
true.

requisito('DEE075'):-
disciplina('DEE074'),
requisito('DEE074'),
true.

requisito('mat0001'):-
disciplina('DEE040'),
requisito('DEE040'),
true.

requisito('DEE045'):-
true.

requisito('DEE048'):-
true.

requisito('DEE090'):-
true.

requisito('DEE040'):-
true.

requisito('DSH009'):-
true.

requisito('DSH008'):-
true.

requisito('DEE050'):-
true.

requisito('DSH012'):-
true.

requisito('DSH013'):-
true.

requisito('PCN001'):-
true.

requisito('DSH055'):-
true.

requisito('DSH026'):-
true.

requisito('DSH027'):-
true.

requisito('DEE074'):-
true.