class Hotel
  attr_accessor :name, :city, :phone, :singles, :doubles

  def initialize(data)
    @name = data["Hotel"]
    @city = data["City"]
    @phone = data["Phone Number"]
    @singles = data["Number of Singles"]
    @doubles = data["Number of Doubles"]
  end
end
