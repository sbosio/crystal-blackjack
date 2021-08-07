module Domain
  class Game
    getter player_hand = [] of Card
    getter dealer_hand = [] of Card
    getter deck = [Card.new]

    def initialize
    end
  end
end
