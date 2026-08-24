$execute store result score #child_r mcstd run data get storage mcstd:priority_queue $(id)[$(pos_child_r)].weight
execute if score #next mcstd < #child_r mcstd run scoreboard players operation #pos_next mcstd = #pos_child_r mcstd
execute if score #next mcstd < #child_r mcstd run scoreboard players operation #next mcstd = #child_r mcstd
