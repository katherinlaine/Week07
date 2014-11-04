require './hand'
require './deck'

class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    get_hand
  end
end



