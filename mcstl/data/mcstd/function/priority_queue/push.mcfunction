# Insert element
# @param mcstd:param {int} id - ID of the priority queue
# @param mcstd:param {Element} value - Value to insert

data modify storage mcstd:macro id set from storage mcstd:param id
function mcstd:priority_queue/core/push/ with storage mcstd:macro
