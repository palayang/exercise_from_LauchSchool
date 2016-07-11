require 'pry'

WINING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
               [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
               [[1, 5, 9], [3, 5, 7]]              # diagnals
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(ary, delimiter = ', ', word = 'or')
  ary[-1] = "#{word} #{ary.last}" if ary.size > 1
  ary.size == 2 ? ary.join(' ') : ary.join(delimiter)
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "choose a square #{joinor(empty_squares(brd))}:"
    square = gets.chomp.to_i
    if empty_squares(brd).include?(square)
      break
    else
      prompt "Sorry, that's not a valid choice."
    end
  end

  brd[square] = PLAYER_MARKER
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def computer_places_piece!(brd)
  square = nil
  WINING_LINES.each do |lines|
    square = find_at_risk_square(brd, lines, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINING_LINES.each do |lines|
      square = find_at_risk_square(brd, lines, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    brd[5] == INITIAL_MARKER ? square = 5 : square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def find_at_risk_square(brd, lines, mark)
  if brd.values_at(*lines).count(mark) == 2
    # lines.each { |e| if brd[e] == INITIAL_MARKER then defense_square = e end}
    brd.select { |k, v| lines.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def detect_winner(brd)
  WINING_LINES.each do |lines|
    if brd.values_at(*lines).count(PLAYER_MARKER) == 3
      return 'player'
    elsif brd.values_at(*lines).count(COMPUTER_MARKER) == 3
      return 'computer'
    end
  end
  nil
end
# empty_squares()
# 1. keys => set range 1-9
# 2. select => set range ' '

def places_piece!(brd, player)
  if player == "real_player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  player == "computer" ? "real_player" : "computer"
end

loop do
  record = { 'player' => 0, 'computer' => 0 }
  loop do
    board = initialize_board
    current_player = "real_player"
    loop do
      display_board(board)
      places_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
    display_board(board)
    if someone_won?(board)
      prompt "#{detect_winner(board)} won this time!"
      record[detect_winner(board)] += 1
    else
      prompt "It is a tie this time!"
    end

    if !record.value?(5)
      prompt "The winner is the first player who get 5 times win," \
             " now player is #{record['player']} times win and" \
             " computer is #{record['computer']} times win."
    else
      break
    end
    prompt "Press any key to continue this game!"
    gets
  end
  prompt "The winner is #{record.key(5)}"
  prompt "do you want to play again? y) yes"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "bye!"
