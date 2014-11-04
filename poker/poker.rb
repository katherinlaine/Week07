class Poker
  def initialize
    @deck = Deck.new
  end

  def play
    puts @deck
    deal
  end

  def deal
    @num = 0
    5.times do |round|
      @players.each do |player|
        player.hand << @deck.cards[@num]
        @num += 1
      end
    end
  end
end

