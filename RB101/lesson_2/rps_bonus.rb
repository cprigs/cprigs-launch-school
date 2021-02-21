# Rock Paper Scissors game
# 1. Need to add lizard and spock into code
# need to allow for abbreviated choices while differentiating sc and sp
# Keep score of wins, match is over at 5 wins
# Store winning choices in hash, if retuned array includes
# computer choice then player wins

COMPUTER_CHOICES = %w(rock paper scissors lizard spock)
VALID_CHOICES = {
  rock: ['r', 'ro', 'roc', 'rock'],
  paper: ['p', 'pa', 'pap', 'pape', 'paper'],
  scissors: ['sc', 'sci', 'scis', 'sciss', 'scisso', 'scissor', 'scissors'],
  lizard: ['l', 'li', 'liz', 'liza', 'lizar', 'lizard'],
  spock: ['sp', 'spo', 'spoc', 'spock']
}
WINNING_CHOICES = {
  rock: ['lizard', 'scissors'],
  paper: ['rock', 'spock'],
  scissors: ['lizard', 'paper'],
  lizard: ['paper', 'spock'],
  spock: ['scissors', 'rock']
}
def valid_input(input)
  keys = VALID_CHOICES.keys
  num = 0
  while num < keys.length
    if VALID_CHOICES[keys[num]].include?(input)
      break keys[num]
    else
      num += 1
    end
  end
end

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    puts("You tied!")
  end
end

choice = ''
input = ''
loop do
  loop do
    prompt("Choose one: #{COMPUTER_CHOICES.join(', ')}")
    input = gets.chomp
    if valid_input(input)
      choice = VALID_CHOICES[valid_input(input)].last
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = COMPUTER_CHOICES.sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?(y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
