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
  loop do
    prompt("Choose one: #{COMPUTER_CHOICES.join(', ')}")
    user_input = gets.chomp
    if valid_input(user_input)
      user_choice = VALID_CHOICES[valid_input(user_input)].last
      return user_choice
    else
      prompt("That is not a valid choice.")
    end
  end
end

def display_choices(player, computer)
  puts("You chose: #{player}; Computer chose: #{computer}")
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

def update_score(player, computer, scores)
  if win?(player, computer)
    scores[:player] += 1
  elsif win?(computer, player)
    scores[:computer] += 1
  else
    scores
  end
end

def display_scores(scores)
  prompt("You have won: #{scores[:player]}")
  prompt("The computer has won: #{scores[:computer]}")
end

def someone_grand_winner?(scores)
  (scores[:player] == GOAL_WINS) || (scores[:computer] == GOAL_WINS)
end

def display_grand_winner(scores)
  if scores[:player] == GOAL_WINS
    puts('You won the match!')
  else
    puts('The computer won the match!')
  end
end

def reset_scores
  { player: 0, computer: 0 }
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
end

display_welcome()
scores = reset_scores

loop do
  loop do
    user_choice = get_user_choice()
    computer_choice = get_random_choice()

    system 'clear'

    display_choices(user_choice, computer_choice)
    display_results(user_choice, computer_choice)

    update_score(user_choice, computer_choice, scores)
    display_scores(scores)
    break if someone_grand_winner?(scores)
  end
  display_grand_winner(scores)
  break unless play_again?()
  scores = reset_scores
end

display_goodbye()
