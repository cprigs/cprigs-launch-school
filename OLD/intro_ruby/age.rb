#exercise 2
puts "How old are you?"
age = gets.chomp
age = age.to_i
n = 10
i = 0
while i < 4
  age += 10
  puts "In #{n} years you will be #{age}"
  n += 10
  i +=1
end
