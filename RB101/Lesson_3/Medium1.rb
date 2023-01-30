#Question 1
10.times {|num| puts (" " * num) + "The Flintstones Rock!" }

#Question 2
#Type Error is the error. Ruby cannot add the text in quotes to the integer 42.
#we could  use string interpolation and change it to 
puts "the value of 40 + 2 is #{40 + 2}"
#we could also convert the integer to string with .to_s
puts "the value of 40 + 2 is " + (40 + 2).to_s

#Question 3

def factors(number)
  divisor = number
  factors = []
  if number != 0 
    (1..number).to_a.each{|div| factors << number / div if number % div == 0}
  else
    return 
  end
  factors.reverse
end

limit = 15

def fib(first_num, second_num,limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1,limit)
puts "result is #{result}"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end