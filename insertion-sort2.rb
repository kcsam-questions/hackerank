ompared_num = arr[-1]
(0..arr.length-1).each do |ind|
  current_ind = arr.length - 1 - ind
  if current_ind == 0
    arr[current_ind] = compared_num
    print arr.join(" ") + "\n"
    break
  end

  if compared_num > arr[current_ind-1]
      arr[current_ind] = compared_num
      print arr.join(" ") + "\n"
      break
  else
      arr[current_ind] = arr[current_ind-1]
      print arr.join(" ") + "\n"
  end
end
