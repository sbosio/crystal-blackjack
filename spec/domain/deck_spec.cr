require "../../src/domain"
require "./stub/deck"

module Domain
  describe Deck do
    context "with a new deck" do
      it "has 52 cards" do
        deck = Deck.new

        deck.size.should eq(52)
      end
    end

    describe "draw card" do
      it "is left with one less card" do
        deck = Deck.new

        deck.draw_card

        deck.size.should eq(52 - 1)
      end

      it "returns the top card from the deck" do
        deck = Stub::Deck.with_four_known_cards

        card = deck.draw_card

        card.should eq(Card.new(Rank::Ten, Suit::Hearts))
      end

      it "removes the top card from the deck" do
        deck = Stub::Deck.with_four_known_cards

        card = deck.draw_card

        deck.should_not contain(Card.new(Rank::Ten, Suit::Hearts))
      end
    end

    describe "deal card to hand" do
      it "removes one card from the deck and adds one card to the hand" do
        deck = Deck.new
        hand = Hand.new

        deck.deal_card_to(hand)

        deck.size.should eq(52 - 1)
        hand.size.should eq(0 + 1)
      end

      it "removes the top card from the deck and adds it to the deck" do
        deck = Stub::Deck.with_four_known_cards
        hand = Hand.new

        deck.deal_card_to(hand)

        deck.should_not contain(Card.new(Rank::Ten, Suit::Hearts))
        hand.should contain(Card.new(Rank::Ten, Suit::Hearts))
      end
    end
  end
end
