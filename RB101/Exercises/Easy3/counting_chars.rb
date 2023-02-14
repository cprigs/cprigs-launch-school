

puts 'Please write word or multiple words:'
words = gets.chomp

characters = words.chars.select {|i| i != ' '}.count

puts "There are #{characters} characters in \"#{words}\"."