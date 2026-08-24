$scoreboard players set #pos_cur mcstd $(pos_cur)
$scoreboard players set #pos_next mcstd $(pos_cur)

scoreboard players operation #pos_child_l mcstd = #pos_cur mcstd
scoreboard players operation #pos_child_l mcstd *= #2 mcstd

scoreboard players operation #pos_child_r mcstd = #pos_child_l mcstd
scoreboard players add #pos_child_r mcstd 1

execute store result storage mcstd:macro pos_child_l int 1 run scoreboard players get #pos_child_l mcstd
execute store result storage mcstd:macro pos_child_r int 1 run scoreboard players get #pos_child_r mcstd

$execute store result score #cur mcstd store result score #next mcstd run data get storage mcstd:priority_queue $(id)[$(pos_cur)].weight
execute if score #pos_child_l mcstd < #len mcstd run function mcstd:priority_queue/core/pop/find_left with storage mcstd:macro
execute if score #pos_child_r mcstd < #len mcstd run function mcstd:priority_queue/core/pop/find_right with storage mcstd:macro

execute store result storage mcstd:macro pos_next int 1 run scoreboard players get #pos_next mcstd
execute if score #next mcstd > #cur mcstd run function mcstd:priority_queue/core/pop/down_heap with storage mcstd:macro
