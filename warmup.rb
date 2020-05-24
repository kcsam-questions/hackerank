#!/bin/ruby

require 'json'
require 'stringio'

# Complete the insertionSort2 function below.
def insertion_sort(n, arr)
    (1..n-1).each do |current_ind|
      compared_ind = current_ind - 1
      current_num = arr[current_ind]

      while compared_ind >= 0
        if arr[compared_ind] > current_num
          arr[compared_ind+1] = arr[compared_ind]
          arr[compared_ind] = current_num
        end

        compared_ind -= 1
      end

      print arr.join(" ") + "\n"
    end
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

insertionSort2 n, arr
