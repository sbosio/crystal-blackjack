require "../../src/domain"

module Domain
  describe Card do
    pending "new card" do
      it "can't be created without a valid rank and value" do
        expect_raises(ArgumentError) do
          card = Card.new("dummy_rank", "dummy_suit")
        end
      end
    end
  end
end
