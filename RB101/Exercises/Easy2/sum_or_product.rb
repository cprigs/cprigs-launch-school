# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers 
# between 1 and the entered integer.

puts '>>Please enter an integer greater than 0:'
user_num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

case operator 
when 's'
  operation = 'sum'
  answer = 0
  for i in 1..user_num 
    answer = i + answer    
  end
when 'p'
  operation = 'product'
  answer = 1
  for i in 1..user_num 
    answer = i * answer    
  end
else
  puts 'That is not a valid operator.'
end

puts "The #{operation} of the integers between 1 and #{user_num} is #{answer}."

