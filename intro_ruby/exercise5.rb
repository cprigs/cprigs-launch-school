#Exercise 5 at end of book

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.unshift(0)
array << 11

puts array

array.delete_if {|x| x == 3}

puts array

array.append(3)
 puts array
