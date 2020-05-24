def closest_numbers(arr)
  arr.sort!
  min_diff = nil
  hash = {}

  (0..arr.length-2).each do |ind|
    diff = arr[ind+1] - arr[ind]
    min_diff ||= diff
    if diff <= min_diff
      min_diff = diff
      hash[min_diff] = [] unless hash[min_diff]
      hash[min_diff] << arr[ind] << arr[ind+1]
    end
  end
  hash[min_diff]
end
