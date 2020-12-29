# examples for basics chapter
puts "1."

a = "Chris"
b = "Prigmore"

puts a + " " + b
#exercise 2
puts "2. Number is 1956"
thousands = 1956 / 1000
hundreds = 1956 % 1000 / 100
tens = 1956 % 1000 % 100 / 10
ones = 1956 % 1000 % 100 % 10
puts "thousands = #{thousands}"
puts "hundreds = #{hundreds}"
puts "tens = #{tens}"
puts "ones = #{ones}"
#exercise 3
puts "3."
movie_hash = {:movie1 => 1975, :movie2 => 2004,
  :movie3 => 2013,:movie4 => 2001,:movie5 => 1981,}
puts movie_hash[:movie1]
puts movie_hash[:movie2]
puts movie_hash[:movie3]
puts movie_hash[:movie4]
puts movie_hash[:movie5]

#exercise 4
puts "4."
movies = [1975, 2004, 2013, 2001, 1981]
puts "#{movies[0]}"
puts "#{movies[1]}"
puts "#{movies[2]}"
puts "#{movies[3]}"
puts "#{movies[4]}"
#exercise 5
puts "5."
a = 5 * 4 * 3 * 2
b = a * 6
c = b * 7
d = c * 8
puts a
puts b
puts c
puts d

#exercise 6
puts "6."
puts 6.1 * 6.1
puts 20.0 ** 2
puts 1953.56 ** 2

#exercise 7
