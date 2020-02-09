-module(diet).
-export([doit/0]).

%look into spinach as a cheaper source of vitamin k.

doit() -> 
    %all amounts are measured in grams per day.
    [
     {egg, 400},
     %{egg, 250},
     {beef_80_20, 200},
     {squash, 200},
     %{dry_split_peas, 75},
     {dry_split_peas, 40},
     %{rice, 65},
     {rice, 30},
     {cabbage, 130},
     {peanuts, 100},
     {sesame, 20},
     {onion, 200},
     {pumpkin_seeds, 30},
     {sunflower_oil, 130},
     {avocado, 400}
    ].
