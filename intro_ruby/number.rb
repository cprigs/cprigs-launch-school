# exercise 3

puts "type a number betwen 0 and 100"
number = gets.chomp
number = number.to_i

if number <= 0 || number >= 100
  puts "that number is not between 0 and  100!"
elsif number > 0 && number < 50
   puts "that number is between 0 and 50!"
else
  puts "that number is between 51 and 100!"
end

#excercise 6
#1. error
#2. false
#3. false
#4. true
#5. false
#6. true
