class User
  attr_accessor :wins, :losses, :ties, :name

  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @ties = 0
  end
end
