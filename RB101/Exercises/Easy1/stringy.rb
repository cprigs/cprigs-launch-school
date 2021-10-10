
def stringy(length)
  string = ""
  i= 0


  while i < length

    if i == 0
      string << "1"
      i += 1
    elsif i.odd?
      string << "0"
      i += 1
    else
      string << "1"
      i += 1
    end
  end
puts string
  string.to_s
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
