def luck_balance(k, contests)
  contests.sort! { |x,y|  [x[1], y[0]] <=> [y[1], x[0]] }
  luck_balance = 0
  number_of_lose = 0
  contests.each do |contest|
    number_of_lose += contest[1]
    if number_of_lose <= k
      luck_balance += contest[0]
    else
      luck_balance -= contest[0]
    end
  end
  luck_balance
end
