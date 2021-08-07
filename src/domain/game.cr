require "../domain"

module Domain
  class Game
    getter player_hand = [] of Card
    getter dealer_hand = [] of Card
    getter deck = Deck.new

    def start
      2.times { player_hand.push Card.new(Rank::Eight, "♦️") }
      2.times { dealer_hand.push Card.new(Rank::Eight, "♦️") }
    end
  end
end
