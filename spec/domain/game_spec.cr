require "../../src/domain"
require "./stub/deck"

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
          deck = Stub::Deck.with_four_known_cards
          game = Game.new(deck)

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
          deck = Stub::Deck.with_four_known_cards
          game = Game.new(deck)

          game.start

          game.dealer_hand.should contain(Card.new(Rank::Eight, Suit::Spades))
          game.dealer_hand.should contain(Card.new(Rank::Nine, Suit::Clubs))
        end
      end

      describe "player busted" do
        it "is false" do
          game = Game.new

          game.player_busted?.should be_false
        end
      end
    end

    context "player turn" do
      #
      # Player turn starts with the two initial cards. In that situation,
      # the player can't be busted (there's no way to have a hand value
      # greater than 21 with two cards).
      # Player has two options: hit (ask one more card) or stand.
      # If player stands or hits and get busted, player turn ends.
      #
    end
  end
end
