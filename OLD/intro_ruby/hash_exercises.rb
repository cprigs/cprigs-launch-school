#exercises for the hash chapter

#1.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select {|k,v| (k == :sisters) || (k == :brothers)}

array = immediate_family.values.flatten
puts array

#2.
name_hash1 = {bob: 42, karen: 43, jack: 46}
name_hash2 = {bob: 45, jill: 47, smith: 50}

puts name_hash1.merge(name_hash2)
puts name_hash1
#puts merge_1to2
puts name_hash1.merge!(name_hash2)
puts name_hash1
#puts merge_2to1

#so it appears that merge is not destructive. it returns a hash
# of the values combined but does not overwrite the original
#merge! overwrites the the hash merge! was called on. This example
#does not include using blocks to specify which values to choose when
#there are duplicate values

#exercise 3
 puts"Exercise 3:"
puts name_hash1
name_hash1.each_key {|k| puts k}
name_hash1.each_value {|v| puts v}
name_hash1.each_pair {|k,v| puts "Key is #{k}, value is #{v}"}

#exercise 4
# you could call person[:name]
#exercise 5
# you could call person.value?("Bob")
if name_hash1.has_value?(45)
  puts "it has it!"
else
  puts "does not have it!"
end

#exercise 6
#my_hash is storing has a symbol as a key and string as value
#my_hash2 has a string for both key and value

#exercise 7
# a method keys was called which does not exist(B)
