def alternate_characters(s)
  previous_char = nil
  no_of_deletion = 0
  arr = s.split("")

  arr.each_with_index do |char, ind|
    if char == previous_char
      no_of_deletion += 1
      next
    end

    previous_char = char
  end

  no_of_deletion
end
