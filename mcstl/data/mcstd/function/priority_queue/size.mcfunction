# Return size of priority queue
# @param mcstd:param {int} id - ID of the priority queue
# @returns mcstd:returns {int} size - Number of elements in the priority queue

data modify storage mcstd:macro id set from storage mcstd:param id
function mcstd:priority_queue/core/size/ with storage mcstd:macro
