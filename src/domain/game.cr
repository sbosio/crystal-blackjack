module Domain
  class Game
    getter player_hand = [] of Card
    getter dealer_hand = [] of Card
    getter deck = [Card.new]

    def initialize
    end

    def start
      2.times { player_hand.push Card.new }
      2.times { dealer_hand.push Card.new }
    end
  end
end
