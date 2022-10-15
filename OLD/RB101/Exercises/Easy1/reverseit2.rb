
def reverse_words(string)
  words = string.split(" ")

  i = 0
  while i < words.length
    if words[i].length >= 5
      words[i] = words[i].reverse
    else
    end
    i += 1
  end

  words.join(" ")
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
