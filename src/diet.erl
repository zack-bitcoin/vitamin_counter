-module(diet).
-export([doit/0]).

doit() -> 
    %all amounts are measured in grams per day.
    [
     {cabbage, 300},
     %{pork, 50},
     %{lard, 100},
     {sardines, 250},
     {corn, 130},
     %{rice, 170},
     {potato, 250},
     %{potato, 150},
     {sunflower_oil, 220},
     {beans, 100},
     {carrot, 50}
    ].
