-module(diet).
-export([doit/0]).

%look into spinach as a cheaper source of vitamin k.

doit() -> 
    %all amounts are measured in grams per day.
    [
     {beef_80_20, 200},
     {egg, 400},
     {squash, 200},
     {dry_split_peas, 80},
     {cabbage, 80},
     {sunflower_oil, 100},
     {butter, 20},
     {banana, 100},
     {onion, 200},
     %{cheese, 50},
     {pumpkin_seeds, 30}
    ].
