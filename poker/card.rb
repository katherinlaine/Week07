class Card
  DISPLAY_NUM = {
    11 => "Jack",
    12 => "Queen",
    13 => "King",
    14 => "Ace",
  }

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def to_s
    "#{display_number(@face)} of #{@suit}"
  end

  private

  def display_number(face)
    DISPLAY_NUM.fetch(face, face)
  end
end


