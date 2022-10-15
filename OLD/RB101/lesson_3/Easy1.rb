#Question 1
# I would expect it to print [1,2,2,3] since uniq is a method
#that returns an array but does not mutate the caller like uniq!
#question 2
# 1. != is a comparison operator that returns true if the values being compared are not true
# You would use this when comparing values
# 2.A bang before a variable would return the opposite of the truthyness of the variable.
# since string and numbers are thruthy it would return false or if the value was false or nil it would return true
# 3.The band after the method usually indicate that method modifies the caller. It may also indicate there is another
#method which does not modify the caller.
#4. ? before something- no idea
#5. ? after something like a method usually indicates it will return the turhtyness of something
#6. I dont know why someone would do this but !!true would return true

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")
puts advice


numbers = [1, 2, 3, 4, 5]

#puts numbers.delete_at(1)
puts numbers.delete(1)
# delete_at deletes the element of the array at the specified index and retuns the mutated array
# delete deletes all occurences of the specified argument

#Question 6
values = (10...100).to_a
puts values.include?(42)

#Question 6
famous_words = "seven years ago..."
puts famous_words.insert(0,"four score and ")
famous_words = "seven years ago..."
puts famous_words
puts famous_words.prepend("four score and ")

#Question 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!
p flintstones

#Question 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p array = flintstones.assoc("Barney")
