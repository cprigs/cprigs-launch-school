

def count_occurrences(array)
  element = array.uniq
  values = []
  i = 0

  while i < element.length
    values[i] = array.count(element[i])
    puts "#{element[i]} => #{values[i]}"
    i += 1
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


count_occurrences(vehicles)
