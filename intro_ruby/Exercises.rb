# Exercise 1

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each {|num| puts num}

#Exercise 2

array.each {|num| puts num if num > 5}

#Exercise 3

new_array = array.select {|num| num.odd?}
puts new_array

#Exercise 4

array << 11
puts array
array.unshift(0)
puts array

#Exercise 5

array.pop
array << 3
puts array

#Exercise 6
array.uniq!

puts array

#Exercise 8

hash1 = {one: 1, two: 2}
hash2 = {:one => 1, :two => 2}

puts hash1
puts hash2

#Exercise 9

h = {a:1, b:2, c:3, d:4}
#1
puts h[:b]
#2
h[:e] = 5
puts h
#3
h.delete_if {|k,v| v < 3.5}
puts h

#Exercise 11

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone] 

#Exercise 13
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

new_arr = arr.delete_if {|str| str.start_with? "s"}

puts new_arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

new_arr = arr.delete_if {|str| str.start_with?("s", "w")}

puts new_arr

#Exercise 14
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map{|str| str.split}.flatten
 puts b

#Exercise 15
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end