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

      it "contains the card sent as parameter" do
        hand = Hand.new

        hand.add_card(DUMMY_CARD)

        hand.cards.should contain(DUMMY_CARD)
      end
    end

    context "when adding multiple cards" do
      it "has a correct amount of cards" do
        hand = Hand.new

        2.times { hand.add_card(DUMMY_CARD) }

        hand.cards.size.should eq(2)
      end
    end
  end
end
