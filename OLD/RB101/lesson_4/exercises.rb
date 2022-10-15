str = "joe's favorite color is blue"
str[0] = 'J'
str # => "Joe's favorite color is blue"
str[6] = 'F'
puts str.object_id
str[15] = 'C'
puts str.object_id
str[21] = 'I'
str[24] = 'B'

puts str


hsh = { apple: 'Produce', carrot: 'Produce', pear: 'Produce', broccoli: 'Produce' }
hsh[:apple] = 'Fruit'
hsh # => { :apple => "Fruit", :carrot => "Produce", :pear => "Produce", :broccoli => "Produce" }

hsh[:carrot] = 'Vegetable'
hsh[:pear] = 'Fruit'
hsh[:broccoli] = 'Vegetable'

puts hsh

loop do
  number = rand(1..10)   # a random number between 1 and 10
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end

alphabet = 'abcdefghijklmnopqrstuvwxyz'
counter = 0

loop do
  break if counter == alphabet.size
  p alphabet[counter]
  counter += 1
end
