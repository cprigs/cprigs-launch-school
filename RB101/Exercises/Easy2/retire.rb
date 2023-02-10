#Build a program that displays when the user will retire and how many years she has to work till retirement.
require 'date'


puts 'What is your age?'
age = gets.chomp.to_i

puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

year = Date.today.year
retire_year = year + (retire_age - age)

puts "It's #{year}. You will retire in #{retire_year}."
puts "You have only #{retire_age - age} years of work to go!"
