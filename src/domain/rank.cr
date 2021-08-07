module Domain
  enum Rank
    Ace
    Two
    Three
    Four
    Five
    Six
    Seven
    Eight
    Nine
    Ten
    Jack
    Queen
    King

    def symbol
      [
        "A", "2", "3", "4", "5", "6", "7",
        "8", "9", "10", "J", "Q", "K",
      ].index(self.value)
    end
  end
end
