#create a calculator that gets the inputs of current age and desired retiring age
# print current year and year to retire

get_age = "What is your age? "
get_r_age = "At what age would you like to retire? "

print get_age
age = gets.chomp!.to_i
print get_r_age
r_age = gets.chomp!.to_i

year = Time.now.year

puts "\nIt's #{year}. You will retire in #{year + (r_age - age)}."
puts "You only have #{r_age - age} years of work to go!"
