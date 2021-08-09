module Domain
    module Stub
      class Hand < Domain::Hand
        DUMMY_SUIT = Suit::Diamonds
  
        def initialize(cards : Array(Card))
          @cards = cards
        end

        def self.queen_three_and_six
          cards = [
            Card.new(Rank::Queen, DUMMY_SUIT),
            Card.new(Rank::Three, DUMMY_SUIT),
            Card.new(Rank::Six, DUMMY_SUIT)
          ]
          Hand.new(cards)
        end

        def self.ace_three_and_six
          cards = [
            Card.new(Rank::Ace, DUMMY_SUIT),
            Card.new(Rank::Three, DUMMY_SUIT),
            Card.new(Rank::Six, DUMMY_SUIT)
          ]
          Hand.new(cards)
        end
      end
    end
  end
  