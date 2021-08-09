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
      2.times { deck.deal_card_to(@player_hand) }
      2.times { deck.deal_card_to(@dealer_hand) }
    end

    def player_busted?
      @player_busted
    end

    def player_hits
      deck.deal_card_to(@player_hand)
    end
  end
end
