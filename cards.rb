# Classes for OOP Blackjack

# Define the cards we'll use in our game.
class Cards
  attr_accessor :suit, :value

  def initialize(suit, value)
    @suit = %w(H D S C)
    @value = %w(2, 3, 4, 5, 6, 7, 8, 8, 10, J, Q, K, A)
  end
end

# Define the deck of cards & shuffle the cards
class Deck
  attr_accessor :cards, :suit, :value

  def initialize
    @cards = []
    @cards << Cards.new(suit, value)
    @shuffle = cards.shuffle!
  end
end

class Player
  attr_accessor :name, :cards, :deck

  def initialize(n)
    @name = n
  end

end

class Dealer
  attr_accessor :deck, :cards

  def initialize
    @dealer_name = 'Dealer'
    @cards = Array.new
  end
end

# Here are the main game play methods
class GamePlay
  attr_accessor :cards, :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new("n")
    @dealer = Dealer.new
  end

  def intro
    puts ""
    puts "=> Welcome to Ruby Casino.  Let's play Blackjack."
    puts ""
    puts "What's your name?"
    n = gets.chomp.capitalize
    puts "Hey there, #{n}! Would you like to play a game of blackjack? Press Any Key to continue"
    play = gets.chomp
    if play == ""
      puts "Ok, the Dealer is ready to deal!"
    end
  end

  def player_cards
    payer_cards = cards
    puts "#{n}, you've been dealt #{player_cards}"
  end

  def calculate_total
    hand = cards.map { |e| e[v] }
    total = 0
    arr.each do |value|
      if value == "A"
        total += 11
      elsif value.to_i == 0
        total += 10
      else
        total += value.to_i
      end
    end
  end

  def hit_me(new_card)
    cards << new_card
  end

  def stay
    cards != new_card
  end

  def blackjack_total
    blackjack_total = 21
  end

  def bust_total
    bust_total > 21
  end

  def run
    intro
    cards
    deck
    player
    player_cards
    dealer
  end
end

lets_play = GamePlay.new
lets_play.run

