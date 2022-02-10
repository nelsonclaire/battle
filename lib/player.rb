class Player
  attr_reader :name
  attr_accessor :hitpoints

  HITPOINTS_DEFAULT = 50

  def initialize(name, hitpoints = HITPOINTS_DEFAULT)
    @name = name
    @hitpoints = hitpoints
  end

end