# Complete the bigSorting function below.
def bigSorting(unsorted)
  while true
    no_of_sort = 0

    (0..unsorted.length-2).each do |ind|
      next if unsorted[ind].size < unsorted[ind+1].size
      next if unsorted[ind].size == unsorted[ind+1].size && unsorted[ind] <= unsorted[ind+1]

      unsorted[ind], unsorted[ind+1] = unsorted[ind+1], unsorted[ind]
      no_of_sort += 1
    end

    break if no_of_sort == 0
  end

  unsorted
end

def big_sort(unsorted)
  unsorted.sort! do |left, right|
      if left.length != right.length
        # The spaceship operator will 
        # return 1 if left.length < right.length = Return true
        # return 0 if left.length == right.length - Doing nothing
        # return -1 if left.length > right.length = Return false and causes the swap
          left.length <=> right.length
      else
          left <=> right
      end
  end
end
