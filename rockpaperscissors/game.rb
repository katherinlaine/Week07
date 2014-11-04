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
    if @aiplay == @move
      puts "tie!"
    elsif @aiplay == "R" && @move == "P"
      puts "Mr. AI played #{@aiplay}"
      puts "#{@name} wins!"
    elsif @aiplay == "P" && @move == "R"
     puts "Mr. AI played #{@aiplay}"
     puts "The machines rule now!"
    elsif @aiplay == "S" && @move == "R"
     puts "Mr. AI played #{@aiplay}"
     puts "The machines rule now!"
    elsif @aiplay == "R" && @move == "S"
      puts "Mr. AI played #{@aiplay}"
      puts "#{@name} wins!"
    elsif @aiplay == "P" && @move == "S"
      puts "Mr. AI played #{@aiplay}"
      puts "#{@name} wins!"
    elsif @aiplay == "S" && @move == "P"
      puts "Mr. AI played #{@aiplay}"
      puts "The machines rule now!" 
    end
  end
end

yo = Round.new("Katherin")
yo.play

