require "../domain"

module Domain
  class Hand
    getter cards = [] of Card

    def add_card(card : Card)
      cards.push card
    end
  end
end
