#exercises for array chapter
arr = [1, 3, 5, 7, 9, 11]
number = 3

def in_array(array, num)
  if array.include?(num)
    puts "The array includes the number #{num}"
  else
    puts "The array does not include the number #{num}"
  end
end

in_array(arr, number)

#3 arr.last.first
#4 1.returns 3 and 6 since a 5 is in those spots on the array
#4 2. Returns error
#4 3 . returns the number 8


#5. a=e ---- b = A------  c = error #WRONG IT RETUNRS ERROR
#6 names is an array that stores strings but the index must
#be called and not the string value. Calling the value margret would work
# if the array was actually a hash
array = ["a", "b", "c", "d"]

array.each_with_index {|val, idx| puts "#{idx+1} : #{val}"}
#exercise 8
array1 = [2, 4, 6, 8, 10]

array2 = array1.collect {|num| num + 2 }
puts array1
puts array2
