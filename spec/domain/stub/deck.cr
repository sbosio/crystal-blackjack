module Domain
  module Stub
    class Deck < Domain::Deck
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
    end
  end
end
