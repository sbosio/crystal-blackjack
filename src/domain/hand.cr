require "../domain"

module Domain
  class Hand
    def initialize(@cards = [] of Card); end

    def add_card(card : Card)
      @cards.push card
    end

    def value
      value = @cards.map{ |c| c.values.first }.sum
      return value unless value > 21

      @cards.map{ |c| c.values.fetch(1, c.values.first) }.sum
    end

    delegate empty?, to: @cards
    delegate size, to: @cards
    delegate includes?, to: @cards
  end
end
