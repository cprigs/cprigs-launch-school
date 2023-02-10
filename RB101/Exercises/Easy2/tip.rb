# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of 
# the bill.

puts "Welcome to tip calculator!"
puts 'What is the bill?'
bill = gets.chomp.to_f

puts 'What is the tip percentage?'
percentage = gets.chomp.to_f

tip = percentage/100 * bill
total = bill  + tip

puts "The tip is $#{tip.round(2)}"

puts "The total is $#{total.round(2)}"