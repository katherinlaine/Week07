require './round'
class Game
  def initialize(name)
    @name = name
  end

  def commence
    greeting
    a = Round.new
    a.play
  end

  def greeting
    puts "Welcome #{@name}. Enter R / P / S or Q to quit."
  end
end
