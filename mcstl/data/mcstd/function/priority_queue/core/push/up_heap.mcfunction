$data modify storage mcstd:temp stash set from storage mcstd:priority_queue $(id)[$(pos_cur)]
$data modify storage mcstd:priority_queue $(id)[$(pos_cur)] set from storage mcstd:priority_queue $(id)[$(pos_parent)]
$data modify storage mcstd:priority_queue $(id)[$(pos_parent)] set from storage mcstd:temp stash

execute store result storage mcstd:macro pos_cur int 0.5 run data get storage mcstd:macro pos_cur
execute store result storage mcstd:macro pos_parent int 0.5 run data get storage mcstd:macro pos_parent
function mcstd:priority_queue/core/push/loop with storage mcstd:macro
