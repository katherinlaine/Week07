require 'csv'
require './hotel'

CSV.foreach("./hotels.csv") do |row|
  puts row[0].inspect
end




