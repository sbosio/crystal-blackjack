module Domain
  enum Suit
    Hearts
    Diamonds
    Clubs
    Spades

    def symbol
      ["♥️", "♦️", "♣︎", "♠︎"].dig(value)
    end
  end
end
