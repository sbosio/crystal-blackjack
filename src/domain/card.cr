module Domain
  class Card
    def initialize(rank : Rank, suit : Suit)
      @rank = rank
      @suit = suit
    end
  end
end
