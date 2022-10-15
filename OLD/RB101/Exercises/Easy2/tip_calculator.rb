
prompt = "What is the bill?"
prompt2 = "what is the tip percentage?"
answer1 = "The tip is "
answer2  = "The total is "



puts prompt
bill = gets.chomp.to_f
puts prompt2
tip_p = gets.chomp.to_f
tip = ( tip_p / 100) * bill

puts("#{answer1} $#{tip}")
puts("#{answer2} $#{tip + bill}")
