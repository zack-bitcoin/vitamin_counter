-module(diet).
-export([doit/0]).

doit() -> 
    %all amounts are measured in grams per day.
    [
     {cabbage, 300},
     %{pork, 100},
     %{lard, 100},
     %{sardines, 250},
     {herring, 100},
     {corn, 130},
     %{rice, 170},
     {potato, 250},
     %{potato, 150},
     {sunflower_oil, 250},
     {beans, 200},
     {carrot, 50}
    ].
