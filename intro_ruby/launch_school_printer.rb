#write program that prints launch school is hte best!
answer = ''

while answer.downcase != 'q'
  puts 'How many times would you like to print? Enter a number >=3: (Q to quit)'
  answer = gets.chomp
  next if answer.downcase == 'q'

  if answer.to_i < 3
    puts "That is not enough lines."
    next
  else
    answer.to_i.times {puts 'Launch School is the best!'}
  end
end

