require "csv"
require './records'

books = RecordSearch.new("hotels.csv")
puts "What do you want to find?"
search = gets.chomp
books.find(search)



