# Remove top element
# @param mcstd:param {int} id - ID of the priority queue

data modify storage mcstd:macro id set from storage mcstd:param id
function mcstd:priority_queue/core/pop/ with storage mcstd:macro
