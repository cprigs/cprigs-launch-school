# calculator for loans
# ask the user for loan amount, APR, and Loan duration in months
# verify inputs
# convert APR to decimal from percent
# print summary of numbers
# output the result
# ask if they want to perform another calulation

require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i().to_s == num || num.to_f.to_s == num
end

def loan_calc(value, i_rate_mo, dur_mo)
  value * (i_rate_mo / (1 - (1 + i_rate_mo)**(-dur_mo)))
end

prompt(MESSAGES['welcome'])
name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loan_val = ''
apr_percent = ''
loan_dur_months = ''

prompt("hi #{name}")
loop do # main loop
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_val = Kernel.gets().chomp()
    if valid_number?(loan_val)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['apr'])
    apr_percent = Kernel.gets().chomp()
    if valid_number?(apr_percent)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  loop do
    prompt(MESSAGES['loan_duration'])
    loan_dur_months = Kernel.gets().chomp()
    if valid_number?(loan_dur_months)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  summary = <<-MSG
    The loan value entered is #{loan_val}
    The APR is #{apr_percent}%
    The loan duration is #{loan_dur_months} months
  MSG
  prompt(summary)
  apr_mo = (apr_percent.to_f) / 100 / 12
  result = loan_calc(loan_val.to_f, apr_mo, loan_dur_months.to_f).round(2)
  prompt("The monthly payment is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for using the loan calculator!")
