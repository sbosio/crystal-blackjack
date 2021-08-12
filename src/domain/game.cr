require "../domain"

module Domain
  class Game
    getter player_hand = Hand.new
    getter dealer_hand = Hand.new
    @player_busted = false

    def initialize
      @deck = Deck.new
    end

    def start
      2.times { @deck.deal_card_to(@player_hand) }
      2.times { @deck.deal_card_to(@dealer_hand) }
    end

    def player_busted?
      @player_busted
    end

    def player_hits
      raise RuntimeError.new("Player is already busted!") if @player_busted

      @deck.deal_card_to(@player_hand)
      @player_busted = true if player_hand.value > 21
    end

    def player_stands
      raise RuntimeError.new("Player is already busted!") if @player_busted
    end
  end
end
