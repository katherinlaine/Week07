require "./card"

class Deck
  attr_reader :cards
  FACES = (2..14)
  SUITS = %w[spades, hearts, diamonds, clubs]

  def initialize
    @cards = generateCards.shuffle
  end

  def throw_card
    @cards.shift
  end

  def generateCards
    SUITS.flat_map do |suit|
      FACES.map do |face|
        Card.new(suit, face)
      end
    end
  end
end


