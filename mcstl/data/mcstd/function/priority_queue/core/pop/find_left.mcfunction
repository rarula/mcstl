$execute store result score #child_l mcstd run data get storage mcstd:priority_queue $(id)[$(pos_child_l)].weight
execute if score #next mcstd < #child_l mcstd run scoreboard players operation #pos_next mcstd = #pos_child_l mcstd
execute if score #next mcstd < #child_l mcstd run scoreboard players operation #next mcstd = #child_l mcstd
