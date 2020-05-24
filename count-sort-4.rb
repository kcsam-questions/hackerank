
def count_sort(arr)
  count_arr = Array.new(100) { [] }

  arr.each_with_index do |pair, ind|
    position = pair[0].to_i
    str = pair[1]

    if ind < (arr.length / 2)
      count_arr[position] << "-"
    else
      count_arr[position] << str
    end
  end

  count_arr.flatten.join(" ")
end
