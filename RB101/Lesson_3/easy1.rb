# Easy 1 Practice Problems


#Question 1- Prints 1 2 2 3 on sperate lines. uniq does not mutate the numbers array.

#Question 2- 
#1. != is the not equal to boolean comparison operator. You can use
# it to compare values or expressions

#2 ! before something like user_name is saying NOT the truthiness of user_name. IF user_name is 
# is a string then !user_name should evaluate to false since strings are truthy.

#3! after a method like uniq usually implies it is a mutating method. 
#4 a ? before something has no meaning to me.
#5 a ? after something like a meathod usually means it is testing something and will return a 
#true or false valu
#6 !!user_name would be testing the truthiness of user_name. it should return true

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub('important', 'urgent')

#question 4
# .delete_at([]) appears to delete the value at the index specified. so delete_at(1)
# deletes the value at index 1 in the numbers array which is value 2.
# delete (1) searches for a matching value 1 and deletes all occurances of that number

#question 5
(10..100).to_a.include?(42) #==> output is true

#Question 6 show two ways to output  Four Score and in front of famous_words = "seven years ago..."
famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
famous_words.insert(0, 'Four score and ')

#Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

#Question8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.select!{|k,v| k == "Barney"}.flatten
#ORRRR
flintstones.assoc("Barney")
