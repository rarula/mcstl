$execute store result score #cur mcstd run data get storage mcstd:priority_queue $(id)[$(pos_cur)].weight
$execute store result score #parent mcstd run data get storage mcstd:priority_queue $(id)[$(pos_parent)].weight

$scoreboard players set #pos_cur mcstd $(pos_cur)
execute if score #pos_cur mcstd matches 2.. if score #cur mcstd > #parent mcstd run function mcstd:priority_queue/core/push/up_heap with storage mcstd:macro
