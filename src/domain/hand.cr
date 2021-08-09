require "../domain"

module Domain
  class Hand
    getter cards = [] of Card

    def add_card(card : Card)
      cards.push card
    end

    def value
      return cards.map{ |c| c.values.first }.sum
    end
  end
end
