$data modify storage mcstd:temp stash set from storage mcstd:priority_queue $(id)[$(pos_cur)]
$data modify storage mcstd:priority_queue $(id)[$(pos_cur)] set from storage mcstd:priority_queue $(id)[$(pos_next)]
$data modify storage mcstd:priority_queue $(id)[$(pos_next)] set from storage mcstd:temp stash

execute store result storage mcstd:macro pos_cur int 1 run scoreboard players get #pos_next mcstd
function mcstd:priority_queue/core/pop/loop with storage mcstd:macro
