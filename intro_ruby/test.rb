def method(string)
  if string.length >= 10 
    string.upcase!
  else
    string
  end
end

puts method("hello")
puts method("You areeeeeeeee!!@")

# caps_method.rb

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")