#Question 1

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?("Spot")
puts ages.has_key?("Herman")
#methods has_key?, key?, member? and include? would all work. First three
#are aliases for include

#Question 2

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.swapcase
#"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
puts munsters_description.capitalize
#"The munsters are creepy in a good way."
puts munsters_description.downcase
#"the munsters are creepy in a good way."
puts munsters_description.upcase
#"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

#Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

puts ages.merge!(additional_ages)
puts ages
#Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("Dino")

#question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
p flintstones

#Question 7

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")
p flintstones

#Question 8

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!("Few things in life are as important as ")
puts advice

#Question 9
statement = "The Flintstones Rock!"
puts statement.count('t')

#Question 10
title = "Flintstone Family Members"
puts title.center(40)
