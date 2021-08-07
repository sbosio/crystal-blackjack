module Domain
  enum Suit
    Hearts
    Diamonds
    Clubs
    Spades

    def symbol
      ["♥️", "♦️",  "♣︎", "♠︎"].index(self.value)
    end
  end
end
