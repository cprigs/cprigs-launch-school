#Question 1

(0..9).each {|v| puts "Flintstones Rock".rjust("Flintstones Rock!".length + v)}

#Question 2 What is the error and two ways to fix?

#puts "the value of 40 + 2 is " + (40 + 2)
#error is trying to add string to integer. Either string or integer needs
# to be converted to the other type
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(24)
puts factors(0)

#Bonus 1 if the divisor returns 0 then it is a factor of the number passed to
# the method. only when there is no remainder will the factor be added to the array
#bonus 2 the purpose of this line is to return the array of factors

#Question 4
# Options one modifies the caller or input array. Options two just returns a new
#array and does not modify the array passed to it.

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

#limit is not accessible from inside the scope of the method. Limit should be
#passed to the method


#Question 6- The output is 34 since the method is saved as a new variable. the
#original variable answer which is passed to the method is unchanged so what
# is printed is just the result of 42-8

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#Question 7

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

puts mess_with_demographics(munsters)
puts munsters

# Yes the original array is modified in the method call so the munsters array
#Question 8
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# puts rps(rps("paper", "rock" ), "rock")
# then evaluates to puts rps("paper","rock")
# this returns paper

#Question 9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)
# foo method call returns "yes", the bar method then evaluates "yes" == "no"
#which return "no"
