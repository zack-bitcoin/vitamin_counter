-module(calculate).
-export([calculate/1, doit/0]).

calculate(Diet) ->
    E = data:essential(),
    calculate(1, E, Diet),
    Protein = 32,
    Carbs = 33,
    Fat = 34,
    CalP = (4*amount(Protein, Diet)),
    CalC = (4*amount(Carbs, Diet)),
    CalF = (9*amount(Fat, Diet)),
    io:fwrite("total calories from protein "),
    io:fwrite(io_lib:format("~.1f",[CalP])),
    io:fwrite("\n"),
    io:fwrite("total calories from carbs "),
    io:fwrite(io_lib:format("~.1f",[CalC])),
    io:fwrite("\n"),
    io:fwrite("total calories from fat "),
    io:fwrite(io_lib:format("~.1f",[CalF])),
    io:fwrite("\n"),
    io:fwrite("total calories "),
    io:fwrite(io_lib:format("~.1f",[CalF + CalP + CalC])),
    io:fwrite("\n").
    
calculate(N, E,_) when N > size(E) ->
    ok;
calculate(N, E, Diet) ->
    calculate_element(element(N, E), N, Diet),
    calculate(N+1, E, Diet).
calculate_element(Min, N, Diet) ->
    A = amount(N, Diet),
    Excess = false,
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
	Excess and (A > Min) ->
	    G = A - Min,
	    io:fwrite(
	      "excess of " ++ 
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
    A = Amount * element(N, F) / 100,
    A + amount(N, Diet).

doit() -> 
    data:test(),
    calculate(diet:doit()).
