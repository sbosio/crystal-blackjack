module Domain
  describe Game do
    #
    # Initially the player and dealer hands have no cards and the deck isn't empty.
    #
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

      describe "deck" do
        it "isn't empty" do
          game = Game.new

          game.deck.should_not be_empty
        end
      end
    end

    context "when the game starts" do
      describe "player hand" do
        it "has two cards" do
          game = Game.new

          game.start

          game.player_hand.size.should eq(2)
        end
      end
    end
  end
end
