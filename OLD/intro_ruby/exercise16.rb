#Exercise 16
#The description of this is confusing. It sounds like you want me to take the already populated
#hash and take the email/address/phone and populate the array. the description of
# exercise 11 makes more sense for iterating over the array and populating the hash.
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
array = [:email, :address, :phone]

for i in 1..3
  info = array.first
  contacts["Joe Smith"][info] = contact_data[i-1]
  array.shift
end

puts contacts
puts array
