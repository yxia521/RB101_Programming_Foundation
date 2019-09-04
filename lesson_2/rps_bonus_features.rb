  require 'yaml'
  MESSAGES = YAML.load_file('rps_bonus_features_messages.yml')

  VALID_CHOICE = %w(rock paper scissors lizard spock)
  WIN_POINTS = 5
  WIN_RULES = {
    'rock': ['scissors', 'lizard'],
    'paper': ['rock', 'spock'],
    'scissors': ['paper', 'lizard'],
    'lizard': ['paper', 'rock'],
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

  def display_result(player, computer)
    if win?(player, computer)
      prompt("You won! \n\n")
    elsif win?(computer, player)
      prompt("Computer won! \n\n")
    else
      prompt(messages('tie'))
    end
  end

  def display_scores(your_scores, computer_scores)
    prompt("Your score is #{your_scores}. Computer's score is #{computer_scores}. \n\n")
  end

  def grand_winner?(your_scores, computer_scores)
    if your_scores == WIN_POINTS && computer_scores != WIN_POINTS
      prompt(messages('you_grand_winner'))
    elsif computer_scores == WIN_POINTS && your_scores != WIN_POINTS
      prompt(messages('computer_grand_winner'))
    end
  end

  clear
  prompt(messages('welcome'))
  prompt(messages('separator'))
  prompt(messages('instruction'))
  prompt(messages('separator'))

  # main loop
  loop do
    your_choice = ''
    your_scores = 0
    computer_scores = 0
    loop do
      prompt(messages('choose_move'))
      prompt(messages('valid_choice'))
      input = gets.chomp

      your_choice = convert_letter(input)
      computer_choice = VALID_CHOICE.sample

      if VALID_CHOICE.include?(your_choice)
        clear
        prompt("You chose #{your_choice}, computer chose #{computer_choice}! \n\n")
        display_result(your_choice, computer_choice)

        if win?(your_choice, computer_choice)
          your_scores += 1
          display_scores(your_scores, computer_scores)
        elsif win?(computer_choice, your_choice)
          computer_scores += 1
          display_scores(your_scores, computer_scores)
        end
        break if your_scores == WIN_POINTS || computer_scores == WIN_POINTS
      else
        prompt(messages('invalid_choice'))
      end
    end

    grand_winner?(your_scores, computer_scores)
    prompt(messages('play_again'))
    answer = gets.chomp
    clear
    break unless answer.downcase.start_with?('y')
  end

  prompt(messages('end'))