def short_long_short(string1, string2)
  if string1.length > string2.length
    short = string2
    long = string1
  else
    short = string1
    long = string2
  end
  short.concat(long, short)
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"