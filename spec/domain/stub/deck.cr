module Domain
  module Stub
    class Deck < Domain::Deck
      DUMMY_SUIT = Suit::Clubs

      def initialize
        super
      end

      def initialize(cards : Array(Card))
        @cards = cards
      end

      def self.with_four_known_cards
        cards = [
          Card.new(Rank::Ten, Suit::Hearts),
          Card.new(Rank::Queen, Suit::Spades),
          Card.new(Rank::Eight, Suit::Spades),
          Card.new(Rank::Nine, Suit::Clubs),
        ]
        new(cards.reverse)
      end

      def self.player_hits_and_goes_busted
        cards = [
          Card.new(Rank::Ten, DUMMY_SUIT),
          Card.new(Rank::Three, DUMMY_SUIT),
          Card.new(Rank::Eight, DUMMY_SUIT),
          Card.new(Rank::Nine, DUMMY_SUIT),
          Card.new(Rank::Jack, DUMMY_SUIT),
        ]
        new(cards.reverse)
      end
    end
  end
end
