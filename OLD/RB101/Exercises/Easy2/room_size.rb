def get_length()
  puts "Enter the length of the room in meters"
  length = gets.chomp
  length.to_f
end

def get_width()
  puts "Enter the width of the room in meters"
  width = gets.chomp
  width.to_f
end

def print_area(len, wid)
  sq_m = len * wid
  sq_ft = sq_m * 10.7639
  puts "The area of the room is #{sq_m} square meters (#{sq_ft} square feet)."
end

length = get_length()
width = get_width()

print_area(length, width)
