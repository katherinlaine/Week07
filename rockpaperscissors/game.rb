require './round'
require './user'

class Game
  def initialize(player)
    @player = player
  end

  def commence
    @user = User.new(@player)
    greeting
    while true
      round = Round.new(@user)
      unless round.play
        break
      end
    end
    results
  end

  def greeting
    puts "Welcome #{@user.name}. Enter R / P / S or Q to quit."
  end

  def results
    puts "You had #{@user.wins} wins, #{@user.losses} losses, and #{@user.ties} ties."
  end

  def status
    if total > 0
      puts "So far, you have #{stat}% wins!"
    else
      puts "Let's get going!" 
    end
  end
end

a = Game.new("Katherin")
a.commence
