require "./hotel"

class HotelCreator
  def initialize(csv)
    @hotels = []
    @csv = csv
  end

  def create
    CSV.foreach(@csv, headers: true).map do |row|
      Hotel.new(row)
    end
  end
end









