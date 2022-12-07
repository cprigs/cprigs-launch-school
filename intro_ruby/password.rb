PASSWORD = 'test123'
USER = 'Chris'

loop do 
  puts 'Please enter your user name:'
  user = gets.chomp
  puts 'Please enter your password:'
  input = gets.chomp
  break if (input == PASSWORD && USER == user)
  puts "Authorization Failed!"
end

puts "Welcome!"