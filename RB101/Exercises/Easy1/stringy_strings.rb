def stringy(num)
  i = 0
  string = ''
  while i < num
    if i.odd?
      string << '0'
    else
      string << '1'
    end
    i += 1
  end
  string
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6)
puts stringy(9) 
puts stringy(4) 
puts stringy(7) 