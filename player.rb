class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lives_left
    "#{lives}/3"
  end
end
