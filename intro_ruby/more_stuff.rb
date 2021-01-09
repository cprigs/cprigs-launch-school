#Exercises

def include_lab?(string)
  if string =~ /lab/
    puts string
  else
    puts "no lab!"
  end
end

include_lab?("labratory")
include_lab?("experiment")
include_lab?("Pans Labyrinth")
include_lab?("elaborate")
include_lab?("polar bear")
