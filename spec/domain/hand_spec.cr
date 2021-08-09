require "../../src/domain"

module Domain
  describe Hand do
    context "with a new hand" do
      it "has no cards" do
        hand = Hand.new

        hand.cards.should be_empty
      end
    end
  end
end
