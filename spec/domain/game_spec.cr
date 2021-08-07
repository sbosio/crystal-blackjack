require "../../src/domain"

module Domain
  describe Game do
    context "with a new game" do
      describe "player hand" do
        it "has no cards" do
          game = Game.new

          game.player_hand.should be_empty
        end
      end

      describe "dealer hand" do
        it "has no cards" do
          game = Game.new

          game.dealer_hand.should be_empty
        end
      end
    end

    context "when the game starts" do
      describe "player hand" do
        # This has to change, it is dealt the top two cards from the deck
        # For that we need to control the deck to test if he receives
        # the right cards.
        it "has two cards" do
          game = Game.new

          game.start

          game.player_hand.size.should eq(2)
        end
      end

      describe "dealer hand" do
        it "has two cards" do
          game = Game.new

          game.start

          game.dealer_hand.size.should eq(2)
        end
      end
    end
  end
end
