# Rock Paper Scissors game
# 1. Need to add lizard and spock into code
# need to allow for abbreviated choices while differentiating sc and sp
# Keep score of wins, match is over at 5 wins
# Store winning choices in hash, if retuned array includes
# computer choice then player wins

COMPUTER_CHOICES = %w(rock paper scissors lizard spock)
VALID_CHOICES = {
  rock: ['r', 'rock'],
  paper: ['p', 'paper'],
  scissors: ['sc', 'scissors'],
  lizard: ['l', 'lizard'],
  spock: ['sp', 'spock']
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

def get_user_choice
  prompt("Choose one: #{COMPUTER_CHOICES.join(', ')}")
  user_input = gets.chomp
  if valid_input(user_input)
    user_choice = VALID_CHOICES[valid_input(user_input)].last
    break
  else
    prompt("That is not a valid choice.")
  end
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

def grand_winner(score1, score2)

end

def reset_scores
  {player: 0,computer: 0}
end

def display_goodbye
  prompt("Thank you for playing!")
end

def display_welcome
  prompt("Welcome to rock, paper, scissors, lizard, and spock!")
end

def get_random_choice
  COMPUTER_CHOICES.sample
end

def play_again?
  prompt("Do you want to play again?(y/n)")
loop do
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    return true
  elsif answer.downcase.start_with?('n')
    return false
  else
    prompt("Invalid Input, please respond with yes or no.")
  end
end

display_welcome
scores = reset_scores

user_choice = ''
user_input = ''
user_wins = 0
computer_wins = 0
loop do
  loop do
  user_choice = get_user_choice
  computer_choice = get_random_choice
  end

  computer_choice = get_random_choice
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

  break unless play_again?
  scores = reset_scores
end

display_goodbye
