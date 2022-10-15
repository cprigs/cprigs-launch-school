#Print teddys age. Teddy's age is to be randomized between 20 an 200

puts "Teddy is #{rand(20..200)} years old!"


# bonus

puts '=> Enter a name:'
name = gets.chomp
name << (name.empty? ? 'Teddy' : '')
puts "#{name} is #{rand(20...180)} years old!"
