require "./deck"

module Domain
  module Stub
    class Game < Domain::Game
      def initialize(@deck : Deck)
      end

      def self.with_known_deck_of_four_cards
        new(Stub::Deck.with_four_known_cards)
      end

      def self.player_hits_and_goes_busted
        new(Stub::Deck.player_hits_and_goes_busted)
      end
    end
  end
end
