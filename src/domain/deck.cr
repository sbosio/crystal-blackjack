require "../domain"

module Domain
  class Deck
    def initialize
      @cards = [] of Card

      Suit.each do |suit|
        Rank.each do |rank|
          @cards.push(Card.new(rank, suit))
        end
        @cards.shuffle
      end
    end

    def deal_card_to(hand : Hand)
      hand.add_card(@cards.pop)
    end

    delegate size, to: @cards
    delegate includes?, to: @cards
  end
end
