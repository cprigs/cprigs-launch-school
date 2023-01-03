# Prompt user for mortage information
# store Loan amount in, annual intrerest rate, and loan duration in years
# calculate and display monthly interest rate
# calculate and display loan duraiton in months
# calculate and display monthly payment

require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  puts message
end

def integer?(input)
  /^-?\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def get_name
  name = ''
  loop do
    name = gets.chomp
    if name.empty?()
      puts MESSAGES['valid_name']
    else
      break
    end
  end
  name
end

def get_loan_amount
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      puts MESSAGES['valid_number']
    end
  end
  loan_amount
end

def get_apr
  apr = ''
  loop do
    apr = gets.chomp
    if valid_number?(apr)
      break
    else
      puts MESSAGES['valid_number']
    end
  end
  apr
end

def loan_duration
  duration = ''
  loop do
    duration = gets.chomp
    if valid_number?(duration)
      break
    else
      puts MESSAGES['valid_number']
    end
  end
  duration
end

def monthly_payment(loan, annual_apr, dur_months)
  mo_apr = annual_apr.to_f / 12 / 100

  mo_payment = loan.to_f * (mo_apr / (1 - (1 + mo_apr)**(-dur_months.to_f)))
  mo_payment.round(2)
end

loan = 0
duration_months = 0
annual_apr = 0

prompt(MESSAGES['welcome'])
name = get_name()

loop do
  prompt(MESSAGES['loan_amount'])
  loan = get_loan_amount()
  prompt(MESSAGES['apr'])
  annual_apr = get_apr()
  prompt(MESSAGES['loan_duration'])
  duration_months = loan_duration()

  summary = <<-MSG
    The loan value entered is #{loan}
    The APR is #{annual_apr}%
    The loan duration is #{duration_months} months
  MSG
  prompt(summary)
  monthly_payment = monthly_payment(loan, annual_apr, duration_months)
  prompt(MESSAGES['monthly_payment'])
  prompt(monthly_payment)
  prompt(MESSAGES['another_calculation'])
  another_calculation = gets.chomp
  break unless another_calculation.downcase.start_with?('y')
end

puts MESSAGES['goodbye'] + name + '!'
