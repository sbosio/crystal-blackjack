module Domain
  SYMBOLS = [
    "A", "2", "3", "4", "5", "6", "7",
    "8", "9", "10", "J", "Q", "K"
  ]

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

    def symbol : String
      SYMBOLS.dig(value)
    end

    def values
      if ace?
        [11, 1]
      elsif number_card?
        [number_card_value]
      elsif face_card?
        [10]
      end
    end

    def ace?
      self == Rank::Ace
    end

    def number_card?
      (Rank::Two.value..Rank::Ten.value) === value
    end

    def face_card?
      (Rank::Jack.value..Rank::King.value) === value
    end

    private def number_card_value
      symbol.to_i
    end
  end
end
