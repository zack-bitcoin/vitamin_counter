-module(calculate).
-export([calculate/1, test/0]).

calculate(Diet) ->
    E = data:essential(),
    calculate(1, E, Diet).
calculate(N, E,_) when N > size(E) ->
    ok;
calculate(N, E, Diet) ->
    calculate_element(element(N, E), N, Diet),
    calculate(N+1, E, Diet).
calculate_element(Min, N, Diet) ->
    A = amount(N, Diet),
    if
	A<Min -> 
	    G = Min - A,
	    io:fwrite(
	      "defficiency of " ++ 
		  io_lib:format("~.1f",[G]) ++
		  %integer_to_list(G) ++ 
		  " / " ++ io_lib:format("~.1f",[Min-0.00001]) ++
		  " "++ units:doit(N-1) ++ 
		  
		  " of " ++ names:names(N-1) ++
		  "\n");
	true -> ok
    end.
amount(_, []) -> 0;
amount(N, [{Food, Amount}|Diet]) ->
    F = data:Food(),
    A = Amount * element(N, F),
    A + amount(N, Diet).

test() ->
    Diet = [
	    {cabbage, 2},
	    {pork, 2.5},
	    {lard, 1.7},
	    {corn, 1.7},
	    {potato, 5}
	   ],
    calculate(Diet).
