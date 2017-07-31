-module(prog).
-export([main/0]).

main() ->
	loop().
loop() ->
	case io:fread( "","~d" ) of
		eof ->
			true;
		{ok, X} ->
			[Y] = X,
			if
				Y == 42 ->
					true;
				true ->
					io:fwrite( "~B\n",X ),
					loop()
			end
	end.
