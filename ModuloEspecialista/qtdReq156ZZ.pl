requisitoDireto('PCE001', 'PCE006').
requisitoDireto('DEE090', X) :- X = 'DEE056'; X = 'DEE059'.
requisitoDireto('DEE045', X) :- X = 'DEE046'; X = 'DEE049'.
requisitoDireto('PCE010', 'PCE004').
requisitoDireto('PCE005', 'PCE015').
requisitoDireto('PCE006', X) :- X = 'PCE011' ; X = 'PCE014'.
requisitoDireto('DEE046', X):- X = 'DEE047'; X = 'DEE051'.
requisitoDireto('DEE050', 'DEE051').
requisitoDireto('PCE011', 'PCE017').
requisitoDireto('PCE014', 'DEE059').
requisitoDireto('DEE047', X):- X= 'DEE059'; X= 'DEE056'; 
                            X= 'DEE055'; X= 'DEE054'.
requisitoDireto('DEE051', 'DEE054').
requisitoDireto('PCE017', 'DEE044').
requisitoDireto('DEE055', X):- X = 'DEE057'; X = 'DEE058'.
requisitoDireto('PCE021', X):- X = 'DSH014'; X = 'DSH015'; X = 'DSH016'.
requisitoDireto('DEE044', 'DEE061').
requisitoDireto('DEE057', X):- X = 'DEE060'; X = 'DSH018'.
requisitoDireto(Y, 'DSH018'):- Y = 'DEE058'; Y = 'DSH014'; 
                                    Y = 'DSH015'; Y = 'DSH016'.
requisitoDireto(Y, X):- (Y = 'DSH014'; Y = 'DSH015'; Y = 'DSH016'),
		  (X = 'DSH017'; X = 'DSH019').
requisitoDireto(Y, X):- (Y = 'DSH017'; Y = 'DSH019'),
		  (X = 'DSH021'; X = 'DSH020').
requisitoDireto(Y, X):- (Y = 'DSH021'; Y = 'DSH020'),
		  (X = 'DSH022'; X = 'DSH025').
		  
		  
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