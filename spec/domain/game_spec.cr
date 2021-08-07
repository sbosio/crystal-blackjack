module Domain
  describe Game do
    #
    # Initially the player and dealer hands have no cards and the deck contains 52 cards.
    #
    context "with a new game" do
      describe "player hand" do
        it "has no cards" do
          game = Game.new

          game.player_hand.should be_empty
        end
      end
    end
  end
end
