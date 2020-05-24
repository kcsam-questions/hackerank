def max_sums(arrays)
  i = 0
  j = 0
  max = nil

  loop do
    total = 0
    nth = 0

    (i..i+2).each do |y|
      (j..j+2).each do |x|
        total += arrays[y][x] unless (nth == 3 || nth == 5)
        nth += 1
      end
    end

    max ||= total
    max = total if total > max

    j += 1
    if j == 4
      i += 1
      j = 0
    end
    break if i == 4
  end

  max
end
