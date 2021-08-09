require "../domain"

module Domain
  class Hand
    getter cards = [] of Card

    def add_card(card : Card)
      cards.push card
    end

    def value
      value = cards.map{ |c| c.values.first }.sum
      return value unless value > 21

      cards.map{ |c| c.values.fetch(1, c.values.first) }.sum
    end
  end
end
