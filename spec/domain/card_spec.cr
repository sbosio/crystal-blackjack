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

    describe "card values" do
      context "ace card" do
        it "returns two possible values: 11 and 1" do
          card = Card.new(Rank::Ace, DUMMY_SUIT)

          values = card.values

          values.should eq([11, 1])
        end
      end
    end
  end
end
