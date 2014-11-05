require "csv"
require "./hotel"
require "./creator"

batch = HotelCreator.new("hotels.csv")
hotel_group = batch.create


hotel_group.each do |hotel|
  puts hotel.name
end


