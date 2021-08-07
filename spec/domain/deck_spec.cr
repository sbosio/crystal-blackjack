require "../../src/domain"

module Domain
  describe Deck do
    context "with a new game" do
      it "has 52 cards" do
        game = Game.new
        deck = game.deck

        deck.cards.size.should eq(52)
      end
    end
  end
end