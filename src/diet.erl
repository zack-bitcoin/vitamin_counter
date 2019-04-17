-module(diet).
-export([doit/0]).

%look into spinach as a cheaper source of vitamin k.

doit() -> 
    %all amounts are measured in grams per day.
    [
     {avocado, 770},%for b2 b2-0.1 and fat
     {squash, 300},%for vitamin C-21
     {chicken, 170},%for protein
     {cabbage, 65},% for vitamin k  k-76
     {peanuts, 60},%for omega 6,
     {sardines, 50},%for calcium and b12 
     {pumpkin_seeds, 30}% from the squash
    ].
