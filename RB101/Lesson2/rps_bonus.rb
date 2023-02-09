# add lizard and spock logic to valid choices and display result-DONE
# allow user to type abbreviated choices
# keep score and annouce a grand winner when player
# or computer has won 3 matches

VALID_CHOICES = {
  rock: ['rock', 'r'],
  paper: ['paper', 'p'],
  scissors: ['scissors', 'sc'],
  lizard: ['l', 'lizard'],
  spock: ['sp', 'spock']
}

WINNING_CHOICES = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['spock', 'paper'],
  spock: ['scissors', 'rock']
}

def display_result(player, computer)
  if WINNING_CHOICES[player].include?(computer.to_s)
    prompt("You won!")
  elsif WINNING_CHOICES[computer].include?(player.to_s)
    prompt("Computer won")
  else
    prompt("You tied!")
  end
end

def prompt(message)
  puts "=> #{message}"
end

def valid_choice?() end

def get_user_choice
  player_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.keys.map(&:to_s).join(', ')}")
    player_choice = gets.chomp
    keys = VALID_CHOICES.keys
    num = 0
    while num < keys.length
      if VALID_CHOICES[keys[num]].include?(player_choice)
        break keys[num]
      else
        num += 1
      end
    end
    if num < keys.length
      break keys[num]
    else
      prompt("That is not a valid choice.")
    end
  end
end

def grand_winner?(score)
  if (score[:player][0] == 3) || (score[:computer][0] == 3)
    true
  else
    false
  end
end

def display_score(score)
  puts "You have won: #{score[:player][0]} and the computer has won: #{score[:computer][0]}."
end

def update_score(score, player, computer)
  if WINNING_CHOICES[player].include?(computer.to_s)
    score[:player][0] += 1
  elsif WINNING_CHOICES[computer].include?(player.to_s)
    score[:computer][0] += 1
  else
    score = score
  end
  score
end

def display_grand_winner(score)
  if score[:player][0] == 3
    puts("You are the grand winner!")
  elsif score[:computer][0] == 3
    puts("The computer is the grand winner!")
  end
end

def 
prompt("Welcome to rock, paper, scissors, lizard, spock!")
prompt("First player or computer to win 3 games will be the grand winner!")

loop do
  score = {
    player: [0],
    computer: [0]
  }
  loop do
    choice = get_user_choice()

    computer_choice =  VALID_CHOICES.keys.sample
    prompt("You chose: #{choice}; computer chose: #{computer_choice} ")
    display_result(choice, computer_choice)
    score = update_score(score, choice, computer_choice)
    display_score(score)
    display_grand_winner(score)
    break if grand_winner?(score)
  end
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
