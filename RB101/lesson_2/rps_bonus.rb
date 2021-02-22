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
GOAL_WINS = 5

def valid_input(input)
  keys = VALID_CHOICES.keys
  num = 0
  while num < keys.length
    if VALID_CHOICES[keys[num]].include?(input.downcase)
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

user_choice = ''
user_input = ''
user_wins = 0
computer_wins = 0
loop do
  loop do
    prompt("Choose one: #{COMPUTER_CHOICES.join(', ')}")
    user_input = gets.chomp
    if valid_input(user_input)
      user_choice = VALID_CHOICES[valid_input(user_input)].last
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = COMPUTER_CHOICES.sample
  system 'clear'
  puts("You chose: #{user_choice}; Computer chose: #{computer_choice}")

  display_results(user_choice, computer_choice)

  if win?(user_choice, computer_choice)
    user_wins += 1
  elsif win?(computer_choice, user_choice)
    computer_wins += 1
  end

  prompt("You have won: #{user_wins}")
  prompt("The computer has won: #{computer_wins}")

  next unless (user_wins == GOAL_WINS) || (computer_wins == GOAL_WINS)

  if user_wins == GOAL_WINS
    puts('You won the match!')
  else
    puts('The computer won the match!')
  end

  prompt("Do you want to play again?(y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  user_wins = 0
  computer_wins = 0
end

prompt("Thank you for playing!")
