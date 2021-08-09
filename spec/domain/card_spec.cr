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

      context "number card (with symbols between 2 and 10)" do
        it "returns only one possible value according to its symbol" do
          card_low = Card.new(Rank::Two, DUMMY_SUIT)
          card_high = Card.new(Rank::Ten, DUMMY_SUIT)

          values_low = card_low.values
          values_high = card_high.values

          values_low.should eq([2])
          values_high.should eq([10])
        end
      end

      context "number card (with faces: Jack, Queen, King)" do
        it "returns only one possible value: 10" do
          card_low = Card.new(Rank::Jack, DUMMY_SUIT)
          card_high = Card.new(Rank::King, DUMMY_SUIT)

          values_low = card_low.values
          values_high = card_high.values

          values_low.should eq([10])
          values_high.should eq([10])
        end
      end
    end
  end
end
