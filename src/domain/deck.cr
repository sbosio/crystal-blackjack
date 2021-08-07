require "../domain"

module Domain
  class Deck
    getter cards = [] of Card

    def initialize
      Card::VALID_SUITES.each do |suit|
        Rank.each do |rank|
          cards.push(Card.new(rank, suit))
        end
        cards.shuffle
      end
    end
  end
end
