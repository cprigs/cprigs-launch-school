# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

puts 'What is your name?'
name = gets.chomp

if name.include?('!')
  name.chop!.upcase!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  name.capitalize!
  puts "Hello #{name}."
end

