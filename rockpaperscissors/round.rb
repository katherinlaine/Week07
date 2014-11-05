require './user'

class Round
  PLAYS = ["R", "P", "S"]
  PRETTY_PLAYS = {
    "R" => "Rock",
    "P" => "Paper",
    "S" => "Scissors"
  }

  def initialize(user)
    @user = user
  end

  def play
    ai_play
    unless get_input == false
      evaluate
      report
    else
      return false
    end
  end

  private

  def ai_play
    @aiplay = PLAYS.sample
  end

  def get_input
    puts "Your move: >"
    @move = gets.chomp.upcase
    if @move == "Q"
      return false
    end
  end

  def prettyplay(play)
    PRETTY_PLAYS.fetch(play)
  end

  def show_moves
    puts "You played #{prettyplay(@move)} and Mr.AI played #{prettyplay(@aiplay)}."
  end

  def evaluate
    user_index = PLAYS.index(@move)
    ai_index = PLAYS.index(@aiplay)
    if user_index == ai_index
      return "TIE"
    elsif (user_index - ai_index).abs == 1
      if user_index > ai_index
        return true
      elsif user_index < ai_index
        return false
      end
    else
      if user_index > ai_index
        return false 
      else
        return true
      end
    end
  end

  def report
    if evaluate == true
      show_moves
      puts "You win!"
      @user.wins += 1
    elsif evaluate == "TIE"
      show_moves
      puts "It's a tie!"
      @user.ties += 1
    else
      show_moves
      puts "Ze machines ween agaaain!"
      @user.losses +=1
    end
  end
end

