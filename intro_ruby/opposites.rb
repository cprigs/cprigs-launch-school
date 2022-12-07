def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

input1 = 0
input2 = 0


loop do

  loop do
    puts 'Please input a positive or negative interger:'
    input1 = gets.chomp
    next puts "Invalid input.Only non-zero integers are allowed." if input1.to_i == 0
    break if valid_number?(input1)
  end

  loop do
    puts 'Please input a positive or negative interger:'
    input2 = gets.chomp
    next puts "Invalid input.Only non-zero integers are allowed." if input2.to_i == 0
    break if valid_number?(input2)
  end
    
  if (input1.to_i < 0 && input2.to_i > 0) || (input1.to_i > 0 && input2.to_i < 0)
    answer = input1.to_i + input2.to_i
    puts "#{input1} + #{input2} = #{answer}"
    break
  else
    puts "Sorry. One integer must be positive, one must be negative."
    puts 'Please start over.'
  end

end
