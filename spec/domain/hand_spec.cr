require "../../src/domain"
require "./stub/hand"

module Domain
  DUMMY_CARD = Card.new(Rank::Jack, Suit::Spades)

  describe Hand do
    context "with a new hand" do
      it "has no cards" do
        hand = Hand.new

        hand.should be_empty
      end
    end

    context "when adding one card" do
      it "has exactly one card" do
        hand = Hand.new

        hand.add_card(DUMMY_CARD)

        hand.size.should eq(1)
      end

      it "contains the card sent as parameter" do
        hand = Hand.new

        hand.add_card(DUMMY_CARD)

        hand.should contain(DUMMY_CARD)
      end
    end

    context "when adding multiple cards" do
      it "has a correct amount of cards" do
        hand = Hand.new

        2.times { hand.add_card(DUMMY_CARD) }

        hand.size.should eq(2)
      end
    end

    describe "hand value" do
      context "without aces" do
        it "returns the sum of all individual card values" do
          hand = Stub::Hand.queen_three_and_six

          hand.value.should eq(10 + 3 + 6)
        end
      end

      context "with one ace and other cards not exceeding 21" do
        it "counts the ace as valued at 11" do
          hand = Stub::Hand.ace_three_and_six

          hand.value.should eq(11 + 3 + 6)
        end
      end

      context "with one ace and other cards exceeding 21" do
        it "counts the ace as valued at 1" do
          hand = Stub::Hand.ace_three_and_eight

          hand.value.should eq(1 + 3 + 8)
        end
      end
    end
  end
end
