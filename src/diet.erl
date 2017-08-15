-module(diet).
-export([doit/0]).

doit() -> 
    %all amounts are measured in grams per day.
    [
     {cabbage, 300},
     %{pork, 100},
     %{lard, 100},
     {sardines, 200},
     {egg, 50},
     {cheese, 50},
     %{herring, 500},
     %{corn, 150},
     %{rice, 100},
     {potato, 250},
     %{whole_grain_flour, 100},
     {sunflower_oil, 167},
     {beans, 100},
     {carrot, 50}
    ].
