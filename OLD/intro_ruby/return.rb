#return
p "V1"
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# 2
puts "V2"
def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value
#3
p "V3"
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value
#chaining methods
p "V4"

def add_three(number)
  number + 3
end

add_three(5)
add_three(5).times {puts "this should print 8 time"}
