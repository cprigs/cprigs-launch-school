# get users name and print it. If they include a ! then yell back at the users

puts "What is your name"
name = gets.chomp!

greeting1 = "Hello #{name}."
greeting2 = "HELLO #{name.upcase}. WHY ARE WE SHOUTING?"

name.include?("!") ? (puts greeting2) : (puts greeting1)
