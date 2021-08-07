require "../../src/domain"

module Domain
  describe Card do
    describe "a new card" do
      it "can't be created without a valid rank" do
        expect_raises(ArgumentError) do
          card = Card.new("dummy_rank", "dummy_suit")
        end
      end
    end
  end
end
