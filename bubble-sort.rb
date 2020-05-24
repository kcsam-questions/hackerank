def sort(a)
  total_sort = 0

  loop do
    number_of_swaps = 0

    (0..a.size-2).each do |idx|
      if a[idx] > a[idx+1]
        a[idx], a[idx+1] = a[idx+1], a[idx]
        number_of_swaps += 1
        total_sort += 1
      end
    end

    break if number_of_swaps.zero?
  end

  print "Array is sorted in #{total_sort} swaps.\n"
  print "First Element: #{a[0]}\n"
  print "Last Element: #{a[-1]}"
end
