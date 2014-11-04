class Round
  PLAYS = ["R", "P", "S"]
  PRETTY_PLAYS = {
    "R" => "Rock",
    "P" => "Paper",
    "S" => "Scissors"
  }

  def initialize(name)
    @name = name
  end

  def play
    ai_play
    get_input
    evaluate
  end

  private

  def ai_play
    @aiplay = PLAYS.sample
  end

  def get_input
    puts "Your move: >"
    @move = gets.chomp.upcase
  end

  def prettyplay(play)
    PRETTY_PLAYS.fetch(play)
  end

  def show_moves
    puts "You played #{prettyplay(@move)} and Mr.AI played #{prettyplay(@aiplay)}."
  end

  def evaluate
    if @aiplay == @move
      puts "tie!"
    elsif @aiplay == "R" && @move == "P"
      show_moves
      puts "#{@name} wins!"
    elsif @aiplay == "P" && @move == "R"
      show_moves
      puts "The machines rule now!"
    elsif @aiplay == "S" && @move == "R"
      show_moves
      puts "The machines rule now!"
    elsif @aiplay == "R" && @move == "S"
      show_moves
      puts "#{@name} wins!"
    elsif @aiplay == "P" && @move == "S"
      show_moves
      puts "#{@name} wins!"
    elsif @aiplay == "S" && @move == "P"
      show_moves
      puts "The machines rule now!" 
    elsif @move == "Q"
      puts "Goodbye!"
    else
      puts "I don't think you entered a real move..."
    end
  end

  def evaluate
    if (PLAYS.index(@move) - PLAYS.index(@aiplay)).abs == 1
      max wins
    else
      min wins
    end
  end
end

