require "../../src/domain"

module Domain
  describe Deck do
    context "with a new deck" do
      it "has 52 cards" do
        deck = Deck.new

        deck.cards.size.should eq(52)
      end
    end

    describe "draw card" do
      it "is left with one less card" do
        deck = Deck.new

        deck.draw_card

        deck.cards.size.should eq(51)
      end
    end
  end
end
