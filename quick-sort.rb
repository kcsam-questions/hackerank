#!/bin/ruby

require 'json'
require 'stringio'

# Complete the quickSort function below.
def quickSort(arr)
  # divide the array into left, right, equal
  p = arr[0]

  left = []
  right = []

  (1..arr.length-1).each do |ind|
    if arr[ind] < p
      left << arr[ind]
    else
      right << arr[ind]
    end
  end

  [left, p, right].flatten
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = quickSort arr

fptr.write result.join " "
fptr.write "\n"

fptr.close(
