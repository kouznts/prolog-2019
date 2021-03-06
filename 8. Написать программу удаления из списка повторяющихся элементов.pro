domains
	l = symbol*
predicates
	nondeterm member(symbol, l)
	nondeterm nodubl(l, l)
clauses
	member(H,	[H|_]).
	member(H,	[_|T]) :- 
		member(H, T).
	nodubl([H|T]	T1) :-	
		member(H, T),
		nodubl(T, T1).
	nodubl([H|T],	[H|T1]) :- 
		not(member(H, T)), 
		nodubl(T, T1).	
	nodubl([],	[]).
goal
	nodubl([a, s, d, a, s], L).