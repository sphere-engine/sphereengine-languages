printl_list([H|X]):-
    put_code(H), printl_list(X).
    
read_line_codes(A, L) :-
	get_code(C),
	(   C == -1
	->  (  A == []
	    ->  L = end_of_file
	    ;   reverse(A, L)
	    )
	;   (  C == 0'\n
	    -> reverse(A, L)
	    ;  read_line_codes([C|A], L)
	    )
	).
    
:- initialization(main).
main :- 
	repeat,
	read_line_codes([], X),
	(X == [52,50]
	-> (
		halt
		)
	; (
		nl,
		printl_list(X)
	)),
	X == end_of_file,
	halt.
