#exercise 1- a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

def repeat(string, num)
  i = 0
  while i < num
    puts "#{string}"
    i +=1
  end
end

def valid?(times)
  if times.to_i <=1
    while times.to_i<1
    puts "please input a positive interger"
    times = gets.chomp
    end
  end
  times
end

puts "Type or word or phrase you would like to repeat:"
  input = gets.chomp

puts "how many times do you want to repeat it?"
  times = valid?(gets.chomp)

repeat(input, times.to_i)
