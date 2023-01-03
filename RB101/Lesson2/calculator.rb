# ask the user for two numbers
# ask the user for n operation to perform
# perform the operation on the two numbers
# output the result
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator! Enter your name:")
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

loop do # main loop
  number1 = 0
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp.to_i
    if valid_number?(number1)
      break
    else
      prompt("hm...that doesn't look like a valid number")
    end
  end
  number2 = 0
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp.to_i
    if valid_number?(number2)
      break
    else
      prompt("hm...that doesn't look like a valid number")
    end
  end

  operator = ''

  operator_prompt = <<-MSG
    What operation would you like to perform? 
      1)Add 
      2)Subtract 
      3)Multiply 
      4)Divide
   MSG

  prompt(operator_prompt)

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must enter 1, 2, 3, or 4.")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f / number2.to_f
           else
             prompt("error")
           end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? (Y to clalculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the caluclator! Good bye!")
