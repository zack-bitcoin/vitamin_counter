-module(diet).
-export([doit/0]).

doit() -> 
    %all amounts are measured in grams per day.
    [
     {cabbage, 300},
     {pork, 50},
     {lard, 100},
     {sardines, 200},
     {corn, 130},
     %{rice, 170},
     {potato, 250},
     {sunflower_oil, 70},
     {beans, 80},
     {carrot, 50}
    ].
