# Create priority queue
# @returns mcstd:returns {int} id - ID of the priority queue

execute store result storage mcstd:returns id int 1 run scoreboard players get #priority_queue:id mcstd
function mcstd:priority_queue/core/new/ with storage mcstd:returns
