require "../domain"

module Domain
  class Game
    getter player_hand = [] of Card
    getter dealer_hand = [] of Card
    getter :deck

    def initialize
      @deck = Deck.new
    end

    def initialize(deck : Deck)
      @deck = deck
    end

    def start
      2.times { player_hand.push Card.new(Rank::Eight, Suit::Diamonds) }
      2.times { dealer_hand.push Card.new(Rank::Eight, Suit::Diamonds) }
    end
  end
end
