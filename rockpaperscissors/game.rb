class Round
  PLAYS = ["R", "P", "S"]
  def initialize(name)
    @name = name
  end

  def play
    greeting
    ai_play
    get_input
    evaluate
  end

  def greeting
    puts "Welcome #{@name}. Enter R / P / S or q to quit."
  end

  def ai_play
    @aiplay = PLAYS.sample
  end

  def get_input
    puts "Your move: >"
    @move = gets.chomp.upcase
  end

  def evaluate
    if @play == @move
    end
  end
end

yo = Round.new("Katherin")
yo.play

