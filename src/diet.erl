-module(diet).
-export([doit/0]).

%look into spinach as a cheaper source of vitamin k.

doit() -> 
    %all amounts are measured in grams per day.
    [
     {avocado, 970},%for b2 b2-0.1 and fat
     %{squash, 300},%for vitamin A
     {chicken, 130},%for protein
     %{sardines, 50},%for b12 and calcium
     {egg, 150},%for b12. need 1/2 eggshell per day of calcium as well
     {peanuts, 60},%for manganese*2.1
     {squash, 20},%for vitamin A
     {flax, 0}
     %{pumpkin_seeds, 30}% from the squash
    ].
