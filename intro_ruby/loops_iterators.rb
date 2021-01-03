# Exercises
#1.the each method adds 1 to each element in the x array
# and returns the number +1 but does not overwrite the array

#2.

#input = nil
#while input != "STOP"
#  puts "type something to capitalize"
#  input = gets.chomp
#  input.upcase!
#  puts input
#  puts "type stop to exit or..."
#end


#3. recursion Exercise
puts "type a number:"

number = gets.chomp.to_

def countdown(num)
  puts num
  if num > 0
  countdown(num-1)
 end
end

countdown(number)
