$execute store result score #len mcstd if data storage mcstd:priority_queue $(id)[]
execute if score #len mcstd matches 1 run return 0

$data modify storage mcstd:priority_queue $(id)[1] set from storage mcstd:priority_queue $(id)[-1]
$data remove storage mcstd:priority_queue $(id)[-1]

scoreboard players remove #len mcstd 1
data modify storage mcstd:macro pos_cur set value 1
execute if score #len mcstd matches 3.. run function mcstd:priority_queue/core/pop/loop with storage mcstd:macro
