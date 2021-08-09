require "../../src/domain"
require "./stub/game"

module Domain
  describe Game do
    context "with a new game" do
      describe "player hand" do
        it "has no cards" do
          game = Game.new

          game.player_hand.should be_empty
        end
      end

      describe "dealer hand" do
        it "has no cards" do
          game = Game.new

          game.dealer_hand.should be_empty
        end
      end
    end

    context "when the game starts" do
      describe "player hand" do
        it "has two cards" do
          game = Game.new

          game.start

          game.player_hand.size.should eq(2)
        end

        it "is dealt the two topmost cards from the deck" do
          game = Stub::Game.with_known_deck_of_four_cards

          game.start

          game.player_hand.should contain(Card.new(Rank::Ten, Suit::Hearts))
          game.player_hand.should contain(Card.new(Rank::Queen, Suit::Spades))
        end
      end

      describe "dealer hand" do
        it "has two cards" do
          game = Game.new

          game.start

          game.dealer_hand.size.should eq(2)
        end

        it "is dealt the third and fourth topmost cards from the deck" do
          game = Stub::Game.with_known_deck_of_four_cards

          game.start

          game.dealer_hand.should contain(Card.new(Rank::Eight, Suit::Spades))
          game.dealer_hand.should contain(Card.new(Rank::Nine, Suit::Clubs))
        end
      end

      describe "player busted" do
        it "is false" do
          game = Game.new

          game.start

          game.player_busted?.should be_false
        end
      end
    end

    describe "player hits" do
      context "player isn't busted" do
        it "receives another card" do
          game = Stub::Game.started

          game.player_hits

          game.player_hand.size.should eq(3)
        end
      end

      context "player goes busted" do
        it "sets player_busted flag to true" do
          game = Stub::Game.player_hits_and_goes_busted

          game.player_hits

          game.player_busted?.should be_true
        end
      end

      context "player already busted" do
        it "raises a RuntimeError exception" do
          game = Stub::Game.with_player_busted

          expect_raises(RuntimeError, "Player is already busted!") { game.player_hits }
        end
      end
    end
  end
end
