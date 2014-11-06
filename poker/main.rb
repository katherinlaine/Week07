require './deck'
require './player'
require './dealer'

class Poker
  def initialize(deck)
    @deck = deck
  end

  def round
    get_players(user_input)
    deal
    display
  end

  private

  def user_input
    print "How many people are playing? >"
    gets.chomp.to_i
  end

  def get_players(number_of_players)
    @players = []
    number_of_players.times do
      @players << Player.new
    end
  end

  def deal
    5.times do
      @players.each do |player|
        player.hand << @deck.throw_card
      end
    end
  end

  def display
    @players.each do |player|
      puts "Player #{@players.index(player) + 1}"
      puts "---------"
      player.display_cards
    end
  end
end

game = Poker.new(Deck.new)
game.round

