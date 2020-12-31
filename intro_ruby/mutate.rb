#MUTATE
a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method:#{a}"
mutate(a)
puts "After mutate method:#{a}"
#does not mutate the caller
a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method:#{a}"
no_mutate(a)
puts "After no_mutate method:#{a}"
#puts vs return
a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method:#{a}"
p mutate(a)
p "After mutate method:#{a}"
