module Domain
  module Stub
    class Deck < Domain::Deck
      DUMMY_RANK = Rank::Two
      DUMMY_SUIT = Suit::Clubs

      def initialize(cards : Array(Card))
        @cards = cards
      end

      def self.with_four_known_cards
        known_cards = [
          Card.new(Rank::Ten, Suit::Hearts),
          Card.new(Rank::Queen, Suit::Spades),
          Card.new(Rank::Eight, Suit::Spades),
          Card.new(Rank::Nine, Suit::Clubs),
        ]
        cards = [] of Card
        48.times { cards.push Card.new(DUMMY_RANK, DUMMY_SUIT) }
        cards += known_cards.reverse
        new(cards)
      end
    end
  end
end
