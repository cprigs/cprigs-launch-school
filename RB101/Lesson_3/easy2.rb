ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("Spot")

#Can also use key?, member? and include?

#Question2

munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase
munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase

#Questoin 3

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
#Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino") # Case sensitive so result is false
advice.match?("Dino") #also case sensitive so result is false.

#Question 5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#Question 6

flintstones << "dino"

#Question 7
flintstones.push("Dino", "Hoppy")

#Question 8

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!('Few things in life are as important')

#Question 9
statement = "The Flintstones Rock!"
statement.count('t')

#Question 10

title = "Flintstone Family Members"
title.center(40)
