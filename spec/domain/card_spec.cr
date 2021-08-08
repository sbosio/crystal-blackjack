require "../../src/domain"

module Domain
  DUMMY_RANK = Rank::Eight
  DUMMY_SUIT = Suit::Diamonds

  describe Card do
    describe "equality comparison" do
      it "returns `true` if both cards have same rank and suit" do
        card = Card.new(Rank::Seven, Suit::Hearts)
        other_card = Card.new(Rank::Seven, Suit::Hearts)

        card.==(other_card).should be_true
      end

      it "returns `false` if cards differ in rank" do
        card = Card.new(Rank::Seven, Suit::Hearts)
        other_card = Card.new(Rank::Two, Suit::Hearts)

        card.==(other_card).should be_false
      end

      it "returns `false` if cards differ in suit" do
        card = Card.new(Rank::Seven, Suit::Hearts)
        other_card = Card.new(Rank::Seven, Suit::Spades)

        card.==(other_card).should be_false
      end
    end
  end
end
