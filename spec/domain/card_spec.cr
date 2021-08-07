require "../../src/domain"

module Domain
  DUMMY_RANK = "8"
  DUMMY_SUIT = "♦️"

  describe Card do
    describe "a new card" do
      it "can't be created without a valid rank" do
        expect_raises(ArgumentError) do
          card = Card.new("invalid_rank", DUMMY_SUIT)
        end
      end

      it "can't be created without a valid suit" do
        expect_raises(ArgumentError) do
          card = Card.new(DUMMY_RANK, "invalid_suit")
        end
      end
    end
  end
end
