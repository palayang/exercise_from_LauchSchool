# 1. initailize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#     repeat until bust or stay
#     if player bust, dealer wins.
# 4. Dealer turn: hit or stay
#     repeat unutil total > 17
#     if dealer bust, player wins.
# 5.Compare cards and declare winner.

require 'pry'
SUITS = ['H', 'S', 'D', 'C'].freeze
VALUES = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].freeze

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def deals_cards(deck)
  # check if deck is empty? it's not gonna empty in one game.
  deck.pop
end

def prompt(input)
  puts "=> #{input}"
end

def doing_first_card!(from_deck, to_player_deck, to_dealer_deck)
  2.times do
    to_player_deck << deals_cards(from_deck)
    to_dealer_deck << deals_cards(from_deck)
  end
end

# calculate each card point and add it up
# if 1..10, add it up
# if j,q,k, refer to point and add it up
# if ace, take it as 10 and after all determine 1 or 10 by how close the point to 21

def total(deck)

  sum = 0
  deck.each do |card|
    if card[1] == 'A'
      sum += 11
    elsif card[1].to_i == 0
      sum += 10
    else
      sum += card[1].to_i
    end
  end

  a_number = deck.count { |e| e[1] == 'A' }
  while sum > 21 && a_number > 0
    sum -= 10
    a_number -= 1
  end

  sum
end

def get_card!(from_deck, to_deck)
  to_deck << deals_cards(from_deck)
end

def check_burst(deck, player)
  if total(deck) > 21
    prompt("#{player} burst")
    true
  else
    false
  end
end

def find_winner(player_deck, dealer_deck)
  player = total(player_deck)
  dealer = total(dealer_deck)

  if player > dealer
    "player"
  elsif player < dealer
    "dealer"
  else
    "tie"
  end
end

loop do
  winner = "none"
  full_deck = []
  player_deck = []
  dealer_deck = []

  full_deck = initialize_deck
  doing_first_card!(full_deck, player_deck, dealer_deck)
  prompt("you first have #{player_deck[0]} and #{player_deck[1]}, and dealer have one #{dealer_deck[0]}")

# keep asking player hit or stay until player bust
# if player bust, break and dealer wins.
  while total(player_deck) <= 21
    prompt("you have #{total(player_deck)} now~")
    prompt("hit or stay?")
    answer = gets.chomp
    if answer == 'hit'
      get_card!(full_deck, player_deck)
    elsif answer == 'stay'
      prompt("now its dealer turn~")
      break
    else
      prompt("please check your answer~")
    end
  end

  prompt("player have #{total(player_deck)} now~")
  player_burst = check_burst(player_deck, "player")
  if player_burst
    winner = "dealer"
  end
  # dealer keep hit if total < 17
  # if dealer bust, break and player wins.
  while total(dealer_deck) < 17 && player_burst == false
    get_card!(full_deck, dealer_deck)
  end

  prompt("dealer have #{total(dealer_deck)} now~")
  dealer_burst = check_burst(dealer_deck, "dealer")
  if dealer_burst && !player_burst
    winner = "player"
  end
  #compare each deck whose number is more close to 21, the more close, the winner.
  if winner == "none"
    winner = find_winner(player_deck, dealer_deck) if !dealer_burst && !player_burst
  end

  prompt("winner is #{winner}")

  prompt ("Do you want to play again? y) yes")
  answer = gets.chomp
  break unless answer.chr.downcase == 'y'
end

