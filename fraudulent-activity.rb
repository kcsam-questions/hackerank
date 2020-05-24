#!/bin/ruby

require 'json'
require 'stringio'

def median(freqs, n)
  # If n is odd, median = (n/2 + 1)'s value
  # If n is even, median = [(n/2 + 1) + (n/2)]'s value / 2
  sorted_ind = 0
  median = nil

  freqs.each_with_index do |freq, amount_of_expenditure|
    sorted_ind += freq

    # First checkup point
    # We need to store (n/2)'s value for the even case
    if sorted_ind >= (n/2)
      # NOTE: Only store the value once so it won't be rewritten 
      # in the next loop.
      # => (n/2) value replaced by (n/2 + 1) value
      median ||= amount_of_expenditure
    end

    # second checkup point
    if sorted_ind > (n/2)
      is_even = n % 2 == 0

      # If n is even, median = [(n/2) + (n/2+1) ] / 2
      # If n is odd, median = (n/2 + 1)
      # NOTE: Must divide by 2.0 (with decimal points) so that the answer won't be round off
      # to integer.
      median = is_even ? ((median + amount_of_expenditure) / 2.0) : amount_of_expenditure
      break
    end
  end

  median
end

# Complete the activityNotifications function below.
def activityNotifications(expenditure, d)
    no_of_notifications = 0

    frequency_table = Array.new(201, 0)

    expenditure.each_with_index do |amount, day|
      if day >= d
        # calculate the median and decide whether to send notifications
        no_of_notifications += 1 if amount >= (2 * median(frequency_table, d))
        frequency_table[expenditure[day-d]] -= 1
      end
      # store the dth day frequency
      frequency_table[amount] += 1
    end

    no_of_notifications
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

expenditure = gets.rstrip.split(' ').map(&:to_i)

result = activityNotifications expenditure, d

fptr.write result
fptr.write "\n"

fptr.close()
