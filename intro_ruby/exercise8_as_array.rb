#exercise 8 as array
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

array = []
for i in 0..(words.count-1)
  if array.flatten.include?(words[i])
    next
  else
    for k in i+1..(words.count-1)
      if words[i].chars.sort == words[k].chars.sort
         if array[i]
         array[i] << words[k]
         else
         array[i] = [words[i], words[k]]
         end
      end
     end
   end
end
array.delete_if {|v| v == nil}
puts "#{array} \n"
