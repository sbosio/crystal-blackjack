require "../../src/domain"

module Domain
  DUMMY_RANK = Rank::Eight
  DUMMY_SUIT = "♦️"

  describe Card do
    describe "a new card" do
      it "can't be created without a valid suit" do
        expect_raises(ArgumentError) do
          card = Card.new(DUMMY_RANK, "invalid_suit")
        end
      end
    end
  end
end
