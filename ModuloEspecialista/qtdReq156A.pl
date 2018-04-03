		  
exige(X, Y):- requisitoDireto(Y, X).
exige(X, Z):- requisitoDireto(Y, X), exige(Y, Z).

requisito(X, Y) :- exige(Y, X).

count([],0).
count([_|T],Acc):- count(T,Acc2), Acc is 1+Acc2. 

retiraRepetidos([],[]):-!.
retiraRepetidos([X],[X]):-!.
retiraRepetidos([H|T],T2):- member(H,T), retiraRepetidos(T,T2),!.
retiraRepetidos([H|T],[H|T2]):- not(member(H,T)), retiraRepetidos(T,T2).

countReq(X,Acc):- findall(Y,(requisito(X,Y)),L),retiraRepetidos(L,LUnique),  count(LUnique,Acc).


requisitoDireto('DSH008', X) :- X = 'DSH010'. 


requisitoDireto('DEE045', X) :- X = 'DEE046'. 


requisitoDireto('DEE040', X) :- X = 'DEE041'. 


requisitoDireto('DEE045', X) :- X = 'DEE049'. 


requisitoDireto('DEE046', X) :- X = 'DEE047'. 


requisitoDireto('DEE041', X) :- X = 'DEE052'. 


requisitoDireto('DSH009', X) :- X = 'DSH011'. 


requisitoDireto('DEE041', X) :- X = 'DEE042'. 


requisitoDireto('DEE046', X) :- X = 'DEE051'. 


requisitoDireto('DEE050', X) :- X = 'DEE051'. 


requisitoDireto('DEE047', X) :- X = 'DEE054'. 


requisitoDireto('DEE051', X) :- X = 'DEE054'. 


requisitoDireto('DEE042', X) :- X = 'DEE043'. 


requisitoDireto('DEE047', X) :- X = 'DEE055'. 


requisitoDireto('DEE090', X) :- X = 'DEE056'. 


requisitoDireto('DEE047', X) :- X = 'DEE056'. 


requisitoDireto('DEE055', X) :- X = 'DEE058'. 


requisitoDireto('DSH013', X) :- X = 'DSH014'. 


requisitoDireto('DSH013', X) :- X = 'DSH016'. 


requisitoDireto('DEE043', X) :- X = 'DEE044'. 


requisitoDireto('DSH013', X) :- X = 'DSH015'. 


requisitoDireto('DEE055', X) :- X = 'DEE057'. 


requisitoDireto('DEE058', X) :- X = 'DSH018'. 


requisitoDireto('DSH015', X) :- X = 'DSH018'. 


requisitoDireto('DEE057', X) :- X = 'DSH018'. 


requisitoDireto('DEE090', X) :- X = 'DEE059'. 


requisitoDireto('DEE047', X) :- X = 'DEE059'. 


requisitoDireto('DEE052', X) :- X = 'DEE059'. 


requisitoDireto('DEE057', X) :- X = 'DEE060'. 


requisitoDireto('DSH014', X) :- X = 'DSH019'. 


requisitoDireto('DSH016', X) :- X = 'DSH019'. 


requisitoDireto('DSH015', X) :- X = 'DSH019'. 


requisitoDireto('DSH019', X) :- X = 'DSH021'. 


requisitoDireto('DSH017', X) :- X = 'DSH021'. 


requisitoDireto('DSH019', X) :- X = 'DSH020'. 


requisitoDireto('DSH017', X) :- X = 'DSH020'. 


requisitoDireto('DEE044', X) :- X = 'DEE061'. 


requisitoDireto('DEE047', X) :- X = 'DSH023'. 


requisitoDireto('DEE058', X) :- X = 'DSH023'. 


requisitoDireto('DSH019', X) :- X = 'DSH023'. 


requisitoDireto('DSH017', X) :- X = 'DSH023'. 


requisitoDireto('DSH021', X) :- X = 'DSH022'. 


requisitoDireto('DSH020', X) :- X = 'DSH022'. 


requisitoDireto('DSH021', X) :- X = 'DSH025'. 


requisitoDireto('DSH020', X) :- X = 'DSH025'. 


requisitoDireto('DSH023', X) :- X = 'DSH024'. 


requisitoDireto('DSH014', X) :- X = 'DSH017'. 


requisitoDireto('DSH016', X) :- X = 'DSH017'. 


requisitoDireto('DSH015', X) :- X = 'DSH017'. 


requisitoDireto('DEE074', X) :- X = 'DEE075'. 


requisitoDireto('DEE040', X) :- X = 'mat0001'. 
