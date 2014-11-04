require "./card"

class Deck
  FACES = (2..14)
  SUITS = %w[spades, hearts, diamonds, clubs]

  def initialize
    @cards = generateCards.shuffle
  end

  def generateCards
    SUITS.flat_map do |suit|
      FACES.map do |face|
        Card.new(suit, face)
      end
    end
  end
end



