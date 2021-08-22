

def count_occurrences(array)
  keys = array.uniq
  values = []
  i = 0

  while i < keys.length
    values[i] = array.count(keys[i])
    puts "#{keys[i]} => #{values[i]}"
    i += 1
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


count_occurrences(vehicles)
