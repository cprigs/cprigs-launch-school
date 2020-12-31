#call stack examples
def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
puts "Main Method"
