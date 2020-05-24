def minimum_absolute_difference(arr)
  min_diff = nil
  arr.sort!

  (0..arr.length-2).each do |idx|
    diff = (arr[idx+1] - arr[idx]).abs
    min_diff ||= diff
    if diff < min_diff
      min_diff = diff
    end
  end

  min_diff
end
