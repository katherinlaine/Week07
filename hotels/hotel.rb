class Hotel
  attr_accessor :name, :city, :phone, :singles, :doubles

  def initialize(data)
    @name = data["Hotel"].strip
    @city = data["City"].strip
    @phone = clean_phone(data["Phone Number"])
    @singles = clean_number(data["Number of Singles"])
    @doubles = clean_number(data["Number of Doubles"])
    @total_rooms = @singles + @doubles
  end

  def information
    <<END
City: #{@city};
Phone Number: #{@phone};
Number of Rooms: #{@total_rooms}
END
  end

  def clean_number(number)
    number.strip.gsub(/[^\d]+/, "").to_i
  end

  def to_s
    @name
  end

  def clean_phone(number)
    cleaned = clean_number(number).to_s
    "(#{cleaned[0..2]}) #{cleaned[3..5]}-#{cleaned[6..9]}"
  end
end
