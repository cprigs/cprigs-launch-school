puts '==> Enter the 1st number:'
num1 = gets.chomp.to_i
puts '==> Enter the 2nd number:'
num2 = gets.chomp.to_i
puts '==> Enter the 3rd number:'
num3 = gets.chomp.to_i
puts '==> Enter the 4th number:'
num4 = gets.chomp.to_i
puts '==> Enter the 5th number:'
num5 = gets.chomp.to_i
puts '==> Enter the last number:'
num6 = gets.chomp.to_i

array = [num1, num2, num3, num4, num5]

answer = array.include?(num6) ? 'appears' : 'does not appear'

puts "The number #{num6} #{answer} in #{array}."


