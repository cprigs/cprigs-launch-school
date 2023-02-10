def center_of(string)
  letters = string.chars
  middle = []
  if letters.count.odd?
    middle[0] = letters[(letters.count - 1 ) / 2]
  else
    middle[0] = (letters[(letters.count / 2) - 1])
    middle[1] = (letters[letters.count / 2])
    middle.join
  end
  
end





puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'