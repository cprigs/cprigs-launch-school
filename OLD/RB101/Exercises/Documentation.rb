#1
# ::path returns a string representation of the path where the file is located
#

puts File.path('bin')

f = File.new('my-file.txt')
puts f
puts f.path
