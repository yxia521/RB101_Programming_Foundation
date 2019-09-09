require 'yaml'
MESSAGES = YAML.load_file('rps_bonus_features_messages.yml')

VALID_CHOICE = %w(rock paper scissors lizard spock)
WIN_POINTS = 5
WIN_RULES = {
  'rock': ['scissors', 'lizard'],
  'paper': ['rock', 'spock'],
  'scissors': ['paper', 'lizard'],
  'lizard': ['paper', 'spock'],
  'spock': ['rock', 'scissors']
}

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts "=> #{message}"
end

def clear
  system('clear') || system('cls')
end

def convert_letter(letter)
  case letter
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'l'
    'lizard'
  when 's'
    'scissors'
  when 'k'
    'spock'
  end
end

def win?(first, second)
  WIN_RULES[first.to_sym].include?(second)
end

def player_choice
  your_choice = ''
  loop do
    prompt(messages('choose_move'))
    prompt(messages('valid_choice'))
    input = gets.chomp
    your_choice = convert_letter(input)
    if VALID_CHOICE.include?(your_choice)
      return your_choice
    else
      prompt(messages('invalid_choice'))
    end
  end
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won! \n\n")
  elsif win?(computer, player)
    prompt("Computer won! \n\n")
  else
    prompt(messages('tie'))
  end
end

def display_scores(scores)
  prompt("Your score is #{scores[:player]}.
   Computer's score is #{scores[:computer]}. \n\n")
end

def update_scores(your_choice, computer_choice, scores)
  if win?(your_choice, computer_choice)
    scores[:player] += 1
    display_scores(scores)
  elsif win?(computer_choice, your_choice)
    scores[:computer] += 1
    display_scores(scores)
  end
end

def grand_winner?(scores)
  if scores[:player] == WIN_POINTS
    prompt(messages('you_grand_winner'))
  elsif scores[:computer] == WIN_POINTS
    prompt(messages('computer_grand_winner'))
  end
end

def game_over(scores)
  scores[:player] == WIN_POINTS || scores[:computer] == WIN_POINTS
end

def valid_answer(answer)
  %w(y yes n no).include?(answer)
end

def play_again
  prompt(messages('play_again'))
  loop do
    answer = gets.chomp
    return answer if valid_answer(answer)
    prompt(messages('invalid_answer'))
  end
end

def new_round(answer)
  %w(y yes).include?(answer)
end

clear
prompt(messages('welcome'))
prompt(messages('separator'))
prompt(messages('instruction'))
prompt(messages('separator'))

# main loop
loop do
  scores = { player: 0, computer: 0 }
  loop do
    computer_choice = VALID_CHOICE.sample
    your_choice = player_choice
    clear
    prompt("You chose #{your_choice}, computer chose #{computer_choice}!\n\n")
    display_result(your_choice, computer_choice)
    update_scores(your_choice, computer_choice, scores)
    break if game_over(scores)
  end
  grand_winner?(scores)

  another_round = play_again
  clear
  break unless new_round(another_round)
end

prompt(messages('end'))
