contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
info = [:email, :address, :phone]

contact_data.flatten!
contacts.each_key {|key| info.map{|s| contacts[key][s] = contact_data.shift}}

puts contacts