INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_PLAYER = 'choose'
WINNING_POINT = 5
MAX_ROUNDS = 10
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def welcome
  prompt('Welcome to Tic Tac Toe.')
  prompt('You must get three in a row to score a point and end the round.')
  prompt("The game will end when either #{WINNING_POINT} points are reached,")
  prompt("or when #{MAX_ROUNDS} rounds have been played, whichever comes first.")
end

def alternate_player(current_player)
  if current_player == 'player'
    'computer'
  else
    'player'
  end
end

def player_places_piece!(brd)
  square = ''

  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry that's not a valid choice.")
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = find_at_risk_square(brd, COMPUTER_MARKER) ||
           find_at_risk_square(brd, PLAYER_MARKER) ||
           center_square(brd) ||
           empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def center_square(brd)
  if brd[5] == INITIAL_MARKER
    return 5
  end
  nil
end

def find_at_risk_square(brd, marker)
  WINNING_LINES.each do |line|
    if immediate_threat?(brd, line, marker)
      line.each do |space|
        if brd[space] == INITIAL_MARKER
          return space
        end
      end
    end
  end
  nil
end

def immediate_threat?(brd, line, marker)
  brd.values_at(*line).count(marker) == 2 &&
    line.any? { |space| brd[space] == INITIAL_MARKER }
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, separator=', ', join_word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{join_word} ")
  else
    arr[-1] = "#{join_word} #{arr.last}"
    arr.join(separator)
  end
end

def choose_player
  player = ''

  if FIRST_PLAYER == 'choose'
    loop do
      prompt('Please enter who will go first. Either computer or player.')
      player = gets.chomp
      break if valid_choice?(player)
      prompt("#{player} is not a valid choice.  Please try again.")
    end
  else
    player = FIRST_PLAYER
  end

  player
end

def play_again_input
  answer = ''

  loop do
    prompt('Play again? (y or n)')
    answer = gets.chomp
    break if yes_or_no?(answer)
    prompt('That is not a valid choice.  Please try again.')
  end

  answer
end

def round_restart
  prompt('Next round will start in...')

  4.downto(1) do |num|
    prompt(num)
    sleep(1)
  end
end

def display_winner(brd)
  if someone_won?(brd)
    prompt("#{detect_winner(brd)} won!")
  else
    prompt("It's a tie!")
  end
end

def update_score!(brd, score)
  if someone_won?(brd)
    detect_winner(brd) == 'Player' ? score[:player] += 1 : score[:computer] += 1
  end
end

def max_reached?(score, rounds_played)
  score[:player] == WINNING_POINT ||
    score[:computer] == WINNING_POINT ||
    rounds_played == MAX_ROUNDS
end

def valid_choice?(user_choice)
  user_choice == 'player' || user_choice == 'computer'
end

def yes_or_no?(user_choice)
  %w(y n yes no).include?(user_choice.downcase)
end

def yes?(user_choice)
  %w(y yes).include?(user_choice.downcase)
end

# main loop
welcome

if FIRST_PLAYER == 'choose'
  prompt('You will choose who goes first.')
else
  prompt("#{FIRST_PLAYER} will go first.")
end

loop do
  scores = { player: 0, computer: 0 }
  whos_first = ''
  rounds_played = 0

  whos_first = choose_player

  loop do
    board = initialize_board
    current_player = whos_first

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)
    display_winner(board)
    update_score!(board, scores)

    rounds_played += 1
    prompt("Current score: Player #{scores[:player]}, "\
           "Computer #{scores[:computer]}")
    break if max_reached?(scores, rounds_played)
    round_restart
  end

  answer = play_again_input
  break unless yes?(answer)
end

prompt('Thanks for playing Tic Tac Toe! See you next time!')
