def power_sum(target, n_power, start=1)
  return start if target.zero?
  return false if target.negative?

  count + power_sum((target - (start ** n_power)), n_power, start+1)
end
