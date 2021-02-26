-module(diet).
-export([doit/0]).

%look into spinach as a cheaper source of vitamin k.

doit() -> 
    %all amounts are measured in grams per day.
    [
     {onion, 50},
     {tomato, 40},
     %{spinach, 30},
     {pumpkin, 150},
     %{peanuts, 25},
     {peanuts, 50},
     %{milk, 125},
     {milk, 250},

     {cheese, 16},
     {lard, 13},

     {egg, 120},
     {chicken, 60},
     {cucumber, 80},
     %{cabbage, 40},
     {cabbage,100},

     {batata, 200},
     %{potato, 200},
     {sunflower_oil, 25},
     {dry_split_peas, 70}

     %11
     %{milk, 250}, %1
     %{cabbage, 230}, % 1.5
     %{chicken, 200}, % 2.4
     %{sunflower_oil, 150}, %2
     %{peanuts, 100},%2
     %{egg, 60}, % 0.9
     %{pumpkin, 50}, % 0.1
     %{sesame, 40}%0.8

     %12
     %{milk, 400}, %1.6
     %{cabbage, 230}, %1.5
     %{peanuts, 340}, %7
     %{egg, 120}, %1.8
     %{pumpkin, 50}, %0.1
     %{sunflower_oil, 30} %0.2

     %14.5
     %{pumpkin, 250},%0.5
     %{onion, 250},%1.5
     %{cabbage, 200},%1.2
     %{egg, 180},%2.7
     %{beef_80_20, 160},%3.4
     %{chicken, 150},%1.8
     %{sunflower_oil, 130},%1.7
     %{batata, 100},%0.5
     %{dry_split_peas, 60},%0.8
     %{sesame, 35},%0.7
     %{pumpkin_seeds, 15}%0


     %{milk, 330},
     %{peanuts, 60},
     %{pumpkin, 250},
     %{onion, 250},
     %{cabbage, 200},
     %{sunflower_oil, 170},
     %{egg, 120},
     %{beef_80_20, 100},
     %{batata, 80},
     %{peanuts, 60},
     %{dry_split_peas, 60},
     %{chicken, 50},
     %{rice, 35},
     %{potato, 30},
     %{pumpkin_seeds, 15}


     %{pasta, 450},
     %{egg, 240},
     %{beef_80_20, 50},

     %{chicken, 120},
     %{egg, 60},
     %{milk, 150},

     %{pumpkin, 40},
     %{pumpkin_seeds, 10},
     %{dry_split_peas, 10},
     %{rice, 50},
     %{batata, 50},
     %{tomato, 120},
     %{corn, 150},
     %{cucumber, 120},
     %{carrot, 5},
     %{pasta, 10},
     %{potato, 40},
     %{cabbage, 20},
     %{peanuts, 20},
     %{onion, 50},
     %{avocado, 200},
     %{sunflower_oil, 20}
    ].
