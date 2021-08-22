#def find_greatest(numbers)
#  saved_number = nil

#  numbers.each do |num|
#    saved_number ||= num  # assign to first value
#    if saved_number >= num
#     next
#    else
#      saved_number = num
#    end
#  end

#  saved_number
#end

#puts find_greatest([1, 2, 4, 6, 7, 10, 1, 2])

# countdown4.rb

x = [1, 2, 3, 4, 5]

for i in x.reverse do
  puts i
end

puts "Done!"
