$execute store result storage mcstd:macro pos_cur int 1 if data storage mcstd:priority_queue $(id)[]
$execute store result storage mcstd:macro pos_parent int 0.5 if data storage mcstd:priority_queue $(id)[]

$data modify storage mcstd:priority_queue $(id) append from storage mcstd:param value
function mcstd:priority_queue/core/push/loop with storage mcstd:macro
