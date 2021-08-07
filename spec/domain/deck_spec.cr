require "../../src/domain"

module Domain
  describe Deck do
    context "with a new game" do
      it "isn't empty" do
        game = Game.new
        deck = game.deck

        deck.cards.should_not be_empty
      end
    end
  end
end