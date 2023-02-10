# Print all even numbers from 1 to 99, inclusive, to the console, 
# with each number on a separate line.

array = (1..99).to_a

array.each {|i| puts i if i.even?}