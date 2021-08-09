require "../domain"

module Domain
  class Game
    getter player_hand = Hand.new
    getter dealer_hand = Hand.new
    getter :deck
    @player_busted = false

    def initialize
      @deck = Deck.new
    end

    def initialize(deck : Deck)
      @deck = deck
    end

    def start
      2.times { @player_hand.add_card(deck.draw_card) }
      2.times { @dealer_hand.add_card(deck.draw_card) }
    end

    def player_busted?
      @player_busted
    end

    def player_hits
      @player_hand.add_card(deck.draw_card)
    end
  end
end
