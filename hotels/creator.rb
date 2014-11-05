require "./hotel"

class HotelCreator
  attr_accessor :hotels

  def initialize(csv)
    @csv = csv
    @hotels = []
  end

  def create
    CSV.foreach(@csv, headers: true).map do |row|
      hotels << Hotel.new(row)
    end
  end
end









