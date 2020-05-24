def super_digit(digit, no_of_repetition)
  num = digit.to_i
  return num if num / 10 <= 0

  ans = super_digit((num / 10).to_s, 1) + (num % 10)
  ans *= no_of_repetition

  puts ans
  while ans.to_s.length != 1
    puts "recursive: #{ans}"
    ans = super_digit((ans / 10).to_s, 1) + (ans % 10)
  end
  ans
end
