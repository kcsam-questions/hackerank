# k = number of friends
def get_minimum_cost(k,c)
  c = c.sort!.reverse

  total = 0

  c.each_slice(k).to_a.each_with_index do |prices, idx|
    total += (prices.sum * (idx+1))
  end

  total
end
