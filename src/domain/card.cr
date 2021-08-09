module Domain
  class Card
    getter :rank
    getter :suit

    def initialize(@rank : Rank, @suit : Suit)
    end

    def ==(other : Card)
      @rank == other.rank && @suit == other.suit
    end

    delegate values, to: @rank
  end
end
