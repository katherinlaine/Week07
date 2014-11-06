require "./hotel"
require "csv"

class Main
  def initialize
    @csv = 'hotels.csv'
  end

  def go
    collect_hotels
    display_hotels
    loop do
      search
    end
  end

  def csv_reader(&block)
    CSV.foreach(@csv, headers: true).map(&block)
  end

  def collect_hotels
    @hotels = csv_reader { |row| Hotel.new(row) }
  end

  def display_hotels
    puts @hotels
  end

  def search
    print "What property: >"
    search = gets.chomp
    puts @hotels.find {|hotel| hotel.name == search }.information
  end
end

Main.new.go
