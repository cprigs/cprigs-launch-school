#coundown.rb

puts "Type a number:"
x = gets.chomp.to_i

#while x >= 0
#  puts x
#  x -= 1
#end

#puts "Done!"

#x += 10

until x < 0
  puts x
  x -= 1
end

puts "Done with the until loop!"
