# Classes for OOP Blackjack


# Define the cards we'll use in our game.
class Cards
  attr_accessor :suit, :value

  def initialize
    @suit = %w(H D S C)
    @value = %w(2, 3, 4, 5, 6, 7, 8, 8, 10, J, Q, K, A)
  end
end

# Define the deck of cards & shuffle the cards
class Deck
  attr_accessor :cards

  def initialize
    @cards << suit
    @cards << value
    @shuffle = cards.shuffle!
  end
end

# Setup the initial hand and values.  Should shuffle be here instead?
class Hand
  attr_accessor :deck, :cards

  def initialize(hand)
    2.times do
      hand << deck.pop
    end
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

  class Player
    attr_accessor :deck, :cards, :hand

    def initialize(name)
      @name = name
      @cards = Array.new
    end
  end

  class Dealer
    attr_accessor :deck, :cards, :hand

    def initialize
      @dealer_name = "Dealer"
      @cards = Array.new
    end
  end

  # Here are the main game play methods
  class Game_play
    attr_accessor :cards, :deck, :hand, :player, :dealer

    def initialize
      # not sure...
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

  end
end
