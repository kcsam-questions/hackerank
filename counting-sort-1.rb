#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countingSort function below.
def countingSort(arr)
  # The value of the array is < 100
  counting_arr = Array.new(100, 0)

  arr.each do |val|
    counting_arr[val] += 1
  end

  counting_arr
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = countingSort arr

fptr.write result.join " "
fptr.write "\n"

fptr.close()
