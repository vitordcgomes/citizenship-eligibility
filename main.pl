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

tem_direito(X, alemanha):- (pai(Y,X); mae(Y, X); avo(Y,X)), cidadania(Y, alema), \+cidadania(X, alema).

tem_direito(X, portugal):- (pai(Y,X); mae(Y, X); avo(Y,X)), cidadania(Y, portuguesa), \+cidadania(X, portuguesa).

tem_direito(X, reino_unido):- (pai(Y,X); mae(Y, X)), cidadania(Y, britanica), \+cidadania(X, britanica).

ascendente(X, Y):- ((pai(X, Y); mae(X, Y)); (pai(X, Z); mae(X, Z))), ascendente(Z, Y).

tem_direito(X, italia):- ascendente(Y, X), cidadania(Y, italiana), \+cidadania(X, italiana).





