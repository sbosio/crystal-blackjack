require "../../src/domain"

module Domain
  DUMMY_CARD = Card.new(Rank::Jack, Suit::Spades)

  describe Hand do
    context "with a new hand" do
      it "has no cards" do
        hand = Hand.new

        hand.cards.should be_empty
      end
    end

    context "when adding one card" do
      it "has exactly one card" do
        hand = Hand.new

        hand.add_card(DUMMY_CARD)

        hand.cards.size.should eq(1)
      end
    end
  end
end
