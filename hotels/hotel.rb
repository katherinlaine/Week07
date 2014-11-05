class Hotel
  attr_accessor :name, :city, :phone, :singles, :doubles

  def initialize(data)
    @name = data["Hotel"]
    @city = data["City"]
    @phone = data["Phone Number"]
    @singles = data["Number of Singles"]
    @doubles = data["Number of Doubles"]
  end

  #def hotel_facts
  #  [@name, @city, @phone, @singles, @doubles]
  #end

  def to_s
    "Name: #{@name};
     City: #{@city};
     Phone Number: #{@phone};
     Number of Single Rooms: #{@singles};
     Number of Double Rooms: #{@doubles}"
  end
end
