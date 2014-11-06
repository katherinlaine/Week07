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


