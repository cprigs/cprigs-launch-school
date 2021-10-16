
def stringy(length)
  string = ""
  i= 0


  while i < length

    if i.even?
      string << "1"
      i += 1
    else i.odd?
      string << "0"
      i += 1
    end
  end
  string.to_s
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
