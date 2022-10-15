#Exercises for comparisons chapter
#Exercise 1
#1. evaluates as False since 128 is not greater than 129
#2. False is equal to false so this not statement evaluates as TRUE
#3. true since integers evalute as TRUE
#4. True- string and interger comparison returns False
#5. true since 328/4 in the or statement evalutes as true


puts "type something"
string = gets.chomp

def upper(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts upper(string)
