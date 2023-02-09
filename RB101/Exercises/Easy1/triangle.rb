def triangle(num, location)
  string = ''
  case location
  when 'bottom_right'
    num.times { puts(string << '*').rjust(num, ' ').to_s }
  when 'bottom_left'
    num.times { puts(string << '*').ljust(num, ' ').to_s }
  when 'top_right'
    string = "*" * (num + 1)
    num.times { puts string.chop!.rjust(num, ' ').to_s }
  when 'top_left'
    string = "*" * (num + 1)
    num.times { puts string.chop!.ljust(num, ' ').to_s }
  end
end

triangle(5, 'bottom_right')
triangle(12, 'bottom_left')

# num.times { puts "#{(string.chop!).ljust(num, ' ')}" }
