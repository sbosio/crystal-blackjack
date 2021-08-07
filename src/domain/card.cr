module Domain
  class Card
    VALID_RANKS = [
      "A", "2",  "3", "4", "5", "6", "7",
      "8", "9", "10", "J", "Q", "K"
    ]

    VALID_SUITES = ["♥️", "♦️",  "♣︎", "♠︎"]

    def initialize(rank : String, suit : String)
      raise(ArgumentError.new) unless VALID_RANKS.includes?(rank)
      raise(ArgumentError.new) unless VALID_SUITES.includes?(suit)

      @rank = rank
      @suit = suit
    end
  end
end
