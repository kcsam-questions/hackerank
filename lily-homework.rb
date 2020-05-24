require 'byebug'

def count_swap(arr, sorted_arr)
  hash = {}

  arr.each_with_index do |val, ind|
    hash[val] = ind
  end

  num_of_swaps = 0

  (0..arr.length - 1).each do |ind|
    next if arr[ind] == sorted_arr[ind]

    idx_for_right_num = hash[sorted_arr[ind]]
    hash[arr[ind]] = idx_for_right_num

    arr[idx_for_right_num] = arr[ind]
    arr[ind] = sorted_arr[ind]
    num_of_swaps += 1
  end
  num_of_swaps
end

def min_swap(arr)
  asc = arr.dup.sort!
  desc = asc.reverse

  [count_swap(arr, asc), count_swap(arr, desc)].min
end
