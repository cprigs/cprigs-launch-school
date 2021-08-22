
def average(array)
  total = []
  i = 0
  while i < array.length
    if i == 0
      total[i] = array[i]
      i += 1
    else
      total[i] = array [i] + total[i-1]
      i +=1
    end
  end
    total[array.length-1]/ array.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
