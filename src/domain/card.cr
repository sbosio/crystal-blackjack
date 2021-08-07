module Domain
  class Card
    VALID_SUITES = ["♥️", "♦️",  "♣︎", "♠︎"]

    def initialize(rank : Rank, suit : String)
      raise(ArgumentError.new) unless VALID_SUITES.includes?(suit)

      @rank = rank
      @suit = suit
    end
  end
end
