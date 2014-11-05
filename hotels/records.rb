require "./hotel"
require "./creator"

class RecordSearch
  def initialize(csv)
    batch = HotelCreator.new(csv)
    @hotel_group = batch.create
  end

  def find(search)
    @hotel_group.hotels.select {|name| name == search }
  end
end
