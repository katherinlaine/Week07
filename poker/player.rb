class Player
  attr_reader :hand

  def initialize
    @hand = []
  end

  def display_cards
    puts @hand
    puts 
  end
end



