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
