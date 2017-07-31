:- set_prolog_flag(verbose,silent).
:- prompt(_, '').
:- use_module(library(readutil)).

main:-
	process,
	halt.

process:-
	read_line_to_codes(current_input, Codes),
	(   Codes = end_of_file
	->  true
	;   (  Codes \= [], number_codes(Int, Codes)
	    -> (Int is 42
	       -> true
	       ;  writeln(Int),
		  process
	       )
	    ;  true
	    )
	).

:- main.
