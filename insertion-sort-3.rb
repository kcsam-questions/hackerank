def insertion_sort(arr)
  number_of_shifts = 0

  (1..arr.length-1).each do |ind|
    compared_ind = ind - 1

    current_num = arr[ind]
    new_ind = ind

    while compared_ind >= 0
      if current_num < arr[compared_ind]
        new_ind = compared_ind
        arr[compared_ind+1] = arr[compared_ind]
        number_of_shifts += 1
      end
      compared_ind -= 1
    end

    arr[new_ind] = current_num
  end
  number_of_shifts
end
