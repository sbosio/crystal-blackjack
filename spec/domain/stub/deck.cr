module Domain
  module Stub
    class Deck < Domain::Deck
      def initialize(cards : Array(Card))
        @cards = cards
      end
    end
  end
end
