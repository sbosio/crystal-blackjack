require "./deck"

module Domain
  module Stub
    class Game < Domain::Game
      DUMMY_DECK = Stub::Deck.new

      def initialize
        super
      end

      def initialize(@deck : Deck, @player_busted = false)
      end

      def self.started
        new.tap { |game| game.start }
      end

      def self.with_known_deck_of_four_cards
        new(Stub::Deck.with_four_known_cards)
      end

      def self.player_hits_and_goes_busted
        new(Stub::Deck.player_hits_and_goes_busted).tap { |game| game.start }
      end

      def self.with_player_busted
        new(DUMMY_DECK, true)
      end
    end
  end
end
