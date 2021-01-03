#conditional while loop
x = 0
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

#repeated but even conditional while loop
x = 0
while x <= 10
  if x.even?
    puts x
  end
  x += 1
end
