pai(joao, maria).
pai(carlos, ana).
pai(pedro, julia).

cidadania(ana, portuguesa).
cidadania(carlos, italiana).
cidadania(pedro, britanica).
cidadania(josefina, alema).

mae(ana, joao).
mae(maria, julia).
mae(josefina, carlos).


avo(X, Y):- (pai(X,Z); mae(X, Z)), (pai(Z, Y); mae(Z, Y)), (X \= Y, X \= Z, Y \= Z).

descendente(X, Y) :- (pai(Y, X); mae(Y, X)); (pai(Z, X); mae(Z, X)), descendente(Z, Y).

tem_direito(X, alemanha):- (pai(Y,X); mae(Y, X); avo(Y,X)), cidadania(Y, alema), \+cidadania(X, alema).

tem_direito(X, portugal):- (pai(Y,X); mae(Y, X); avo(Y,X)), cidadania(Y, portuguesa), \+cidadania(X, portuguesa).

tem_direito(X, reino_unido):- (pai(Y,X); mae(Y, X)), cidadania(Y, britanica), \+cidadania(X, britanica).

tem_direito(X, italia):- descendente(X, Y), cidadania(Y, italiana), \+cidadania(X, italiana).





