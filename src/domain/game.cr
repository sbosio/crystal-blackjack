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
      2.times { @player_hand.push deck.draw_card }
      2.times { @dealer_hand.push deck.draw_card }
    end
  end
end
