#!/bin/ruby

require 'json'
require 'stringio'

# Complete the runningTime function below.
def runningTime(arr)
  no_of_shift = 0
  (1..arr.length-1).each do |current_ind|
    current_num = arr[current_ind]
    compared_ind = current_ind - 1

    while compared_ind >= 0
      if arr[compared_ind] > current_num
        arr[compared_ind+1] = arr[compared_ind]
        arr[compared_ind] = current_num
        no_of_shift += 1
      end

      compared_ind -= 1
    end
  end

  no_of_shift
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = runningTime arr

fptr.write result
fptr.write "\n"

fptr.close()
