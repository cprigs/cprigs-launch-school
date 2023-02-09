def print_in_box(string)

  dashes = ''
  blanks = ''

  string.length.times {dashes << '-'}
  string.length.times {blanks << ' '}
  
  puts '+--+'.insert(2,dashes)
  puts '|  |'.insert(2,blanks)
  puts '|  |'.insert(2,string)
  puts '|  |'.insert(2,blanks)
  puts '+--+'.insert(2,dashes)
end

print_in_box('To boldly go where no one has gone before.')


print_in_box('Did I get it?')