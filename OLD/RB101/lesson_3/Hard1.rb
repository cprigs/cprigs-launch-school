#question 1
if false
  greeting = "hello world"
end

puts greeting

#question 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
#this will print "hi there". The object informal_greeting points to the first entry
# of greetings so will modify that value

#Question 3

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#Question 4

def is_an_ip_number?(number)
  (number.to_i > 0 ) && (number.to_i < 255)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
   return false if dot_separated_words.count != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end
